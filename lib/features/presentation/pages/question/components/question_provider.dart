import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ixl/features/presentation/pages/question/models/question.dart';

class QuestionProvider extends ChangeNotifier {
  int _correctAnswersInRow = 0;
  int _sumOfPoints = 0;
  bool _enableTextField = true;
  List<Question> _questionsList = questionsList;
  double _progressBarValue = 0.0;
  bool _correctRow = true;
  Map<String, List<Question>> _listByDifficulty = {
    'Easy': [],
    'Medium': [],
    'Hard': [],
    'Master': []
  };
  Map<String, Queue<int>> _answeredQuestionsIndexesByDifficulty = {
    'Easy': Queue<int>(),
    'Medium': Queue<int>(),
    'Hard': Queue<int>(),
    'Master': Queue<int>()
  };

  QuestionProvider() {
    _organizeQuestionsByDifficulty();
    _selectNextQuestion();
  }

  Question get currentQuestion => _questionsList
      .firstWhere((question) => question.id == _currentQuestionIndex);
  double get progressBarValue => _progressBarValue;
  int get correctAnswersInRow => _correctAnswersInRow;
  int get sumOfPoints => _sumOfPoints;
  bool get enableTextField => _enableTextField;
  late int _currentQuestionIndex;

  void _organizeQuestionsByDifficulty() {
    for (var question in _questionsList) {
      String difficulty = _getDifficultyCategory(question.difficulty);
      _listByDifficulty[difficulty]?.add(question);
    }
  }

  String _getDifficultyCategory(String difficulty) {
    if (["Easy", "Surefire", "Effortless", "Elementary"].contains(difficulty)) {
      return 'Easy';
    } else if (["Medium", "Doable"].contains(difficulty)) {
      return 'Medium';
    } else if (["Hard", "Difficult", "Challenging", "Impossible"]
        .contains(difficulty)) {
      return 'Hard';
    } else {
      return 'Master';
    }
  }

  void _selectNextQuestion() {
    String difficulty = _getCurrentDifficulty();
    var questionsInDifficulty = _listByDifficulty[difficulty]!;
    var answeredIndexes = _answeredQuestionsIndexesByDifficulty[difficulty]!;

    if (answeredIndexes.length == questionsInDifficulty.length) {
      answeredIndexes.clear();
    }

    List<Question> unansweredQuestions = questionsInDifficulty
        .where((q) => !answeredIndexes.contains(q.id))
        .toList();
    var random = Random();
    var nextQuestion =
        unansweredQuestions[random.nextInt(unansweredQuestions.length)];
    _currentQuestionIndex = nextQuestion.id;

    answeredIndexes.add(nextQuestion.id);
    notifyListeners();
  }

  String _getCurrentDifficulty() {
    if (_sumOfPoints <= 50) {
      return 'Easy';
    } else if (_sumOfPoints <= 70) {
      return 'Medium';
    } else if (_sumOfPoints <= 90) {
      return 'Hard';
    } else {
      return 'Master';
    }
  }

  void moveToNextQuestion() {
    _selectNextQuestion();
  }

  void checkUserAnswer(BuildContext context, String answer) {
    if (currentQuestion.correctAnswer == answer) {
      _handleCorrectAnswer(context);
    } else {
      _handleIncorrectAnswer(context);
    }
    _progressBarValue = _sumOfPoints.toDouble();
    _selectNextQuestion();

    if (_sumOfPoints >= 100) {
      _enableTextField = false;
      showCongratulationsDialog(context);
      _sumOfPoints = 100;
      notifyListeners();
    }
  }

  void _handleCorrectAnswer(BuildContext context) {
    int startIncrement = 10 - _sumOfPoints ~/ 10;
    int currentIncrement = startIncrement;
    bool hasSkippedDecrement = currentIncrement != 10;

    if (_sumOfPoints < 70) {
      _sumOfPoints += currentIncrement;

      if (!hasSkippedDecrement && currentIncrement > 4) {
        currentIncrement--;
      } else {
        hasSkippedDecrement = true;
      }

      if (currentIncrement < 4) {
        currentIncrement = 4;
      }
    } else if (_sumOfPoints >= 70 && _sumOfPoints < 80) {
      _sumOfPoints += 3;
    } else {
      _sumOfPoints += 2;
    }
    notifyListeners();
  }

  void _handleIncorrectAnswer(BuildContext context) {
    if (_sumOfPoints < 60) {
      _sumOfPoints -= _sumOfPoints ~/ 10;
    } else if (_sumOfPoints >= 60 && _sumOfPoints < 70) {
      _sumOfPoints -= (_sumOfPoints ~/ 10) - 1;
    } else {
      _sumOfPoints -= (_sumOfPoints ~/ 10) - 2;
    }
    notifyListeners();
  }

  void showCongratulationsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Congratulations!'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('You have successfully reached the maximum score.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void storeValueHive(String name, int score, String key) async {
    var scoreBox = await Hive.openBox('score');
    scoreBox.put(key, score);
  }
}
