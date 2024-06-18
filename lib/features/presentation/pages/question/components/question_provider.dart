import 'dart:collection';
import 'dart:developer' as dev;
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ixl/core/services/firestore.dart';
import 'package:ixl/core/services/get_points_firestore.dart';
import 'package:ixl/features/presentation/pages/question/models/question.dart';
import 'package:ixl/features/presentation/pages/review_page/review_page.dart';
import 'package:lottie/lottie.dart';
import 'package:material_dialogs/dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';

class QuestionProvider extends ChangeNotifier {
  int _correctAnswersInRow = 0;
  late int _sumOfPoints;
  int _lastScoreChange = 0;
  double _progressBarValue = 0.0;
  final _stopWatch = Stopwatch();
  int _passedQuestions = 0;

  List<Question> _questionsList = [];

  void _organizeQuestionsByTest(String subject, String theme, String test) {
    if (questionsList.containsKey(theme) &&
        questionsList[theme]!.containsKey(test)) {
      for (var question in questionsList[theme]![test]!) {
        if (question.subjectId == subject &&
            question.themeId == theme &&
            question.testId == test) {
          _questionsList.add(question);
        }
      }
    } else {
      dev.log("Data not found for theme: $theme, test: $test");
    }
  }

  TextInputType findKeyboardType(Question question) {
    TextInputType textInputType = TextInputType.text;
    if (question.keyboardType == 'digit') {
      textInputType = TextInputType.number;
    }
    return textInputType;
  }

  bool _enableTextField = true;
  bool _seventydialogshown = false;
  bool _eightytydialogshown = false;
  bool _ninetydialogshown = false;
  bool _answered = false;
  bool _finished = false;
  bool _resetted = false;

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

  QuestionProvider(
      String subject, String theme, String test, int currentScore) {
    _sumOfPoints = currentScore;
    _progressBarValue = _sumOfPoints.toDouble();
    if (_sumOfPoints >= 70) {
      _seventydialogshown = true;
    }

    if (_sumOfPoints >= 80) {
      _eightytydialogshown = true;
    }

    if (_sumOfPoints >= 90) {
      _ninetydialogshown = true;
    }
    _organizeQuestionsByTest(subject, theme, test);
    if (_questionsList.isNotEmpty) {
      _organizeQuestionsByDifficulty();
      _selectNextQuestion();
      _stopWatch.reset();
      _stopWatch.start();
    } else {
      dev.log("No questions found for the specified test.");
    }
  }

  Question get currentQuestion => _questionsList.firstWhere(
      (question) => question.id == _currentQuestionIndex,
      orElse: () => Question(
          id: -1,
          title: '',
          text: 'No Question',
          difficulty: '',
          category: '',
          correctAnswer: '',
          explanation: '',
          subjectId: '',
          themeId: '',
          testId: '',
          keyboardType: ''));

  double get progressBarValue => _progressBarValue;
  int get correctAnswersInRow => _correctAnswersInRow;
  int get sumOfPoints => _sumOfPoints;
  bool get enableTextField => _enableTextField;
  int get lastScoreChange => _lastScoreChange;
  bool get answered => _answered;
  bool get finished => _finished;
  int _currentQuestionIndex = 0;
  Stopwatch get stopWatch => _stopWatch;

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
    dev.log(_listByDifficulty.toString());
    if (unansweredQuestions.isNotEmpty) {
      var random = Random();
      var nextQuestion =
          unansweredQuestions[random.nextInt(unansweredQuestions.length)];
      _currentQuestionIndex = nextQuestion.id;
      answeredIndexes.add(nextQuestion.id);
      notifyListeners();
    } else {
      dev.log("No unanswered questions available.");
    }
  }

  // void _selectNextQuestion() {
  //   String difficulty = _getCurrentDifficulty();
  //   var questionsInDifficulty = _listByDifficulty[difficulty]!;
  //   var answeredIndexes = _answeredQuestionsIndexesByDifficulty[difficulty]!;

  //   if (answeredIndexes.length == questionsInDifficulty.length) {
  //     answeredIndexes.clear();
  //   }

  //   List<Question> unansweredQuestions = questionsInDifficulty
  //       .where((q) => !answeredIndexes.contains(q.id))
  //       .toList();
  //   if (unansweredQuestions.isNotEmpty) {
  //     var random = Random();
  //     var nextQuestion =
  //         unansweredQuestions[random.nextInt(unansweredQuestions.length)];
  //     _currentQuestionIndex = nextQuestion.id;
  //     answeredIndexes.add(nextQuestion.id);
  //     notifyListeners();
  //   } else {
  //     dev.log("No unanswered questions available.");
  //   }
  // }

  String _getCurrentDifficulty() {
    if (_sumOfPoints < 70) {
      return 'Easy';
    } else if (_sumOfPoints < 90) {
      return 'Medium';
    } else if (_sumOfPoints < 95) {
      return 'Hard';
    } else {
      return 'Master';
    }
  }

  void checkUserAnswer(
    BuildContext context,
    String answer,
    String subjectId,
    String themeId,
    String testId, {
    required Function(bool, int) onChecked,
  }) async {
    bool isCorrect = currentQuestion.correctAnswer.replaceAll(' ', '') ==
        answer.replaceAll(' ', '');
    dev.log(answer.replaceAll(' ', ''));
    onChecked(isCorrect, _lastScoreChange);
    _passedQuestions++;

    if (_sumOfPoints < 70) {
      _seventydialogshown = false;
    }

    if (_sumOfPoints < 80) {
      _eightytydialogshown = false;
    }

    if (_sumOfPoints < 90) {
      _ninetydialogshown = false;
    }

    if (isCorrect) {
      await _handleCorrectAnswer(context);
      _correctAnswersInRow++;
    } else {
      _answered = true;
      _enableTextField = false;
      _handleIncorrectAnswer(context);
    }
    _progressBarValue = _sumOfPoints.toDouble();

    if (_sumOfPoints >= 70 && _seventydialogshown == false) {
      _seventydialogshown = true;
      showCongratulationsDialog(context, 'Well done!',
          "Woohoo! You've soared to 70 points! Keep up the fantastic work!");
    } else if (_sumOfPoints >= 80 && _eightytydialogshown == false) {
      _eightytydialogshown = true;
      showCongratulationsDialog(context, 'Excellent!',
          'Incredible! Hitting 80 points marks you as a true champion of effort. Good job.');
    } else if (_sumOfPoints >= 90 && _ninetydialogshown == false) {
      _ninetydialogshown = true;
      showCongratulationsDialog(context, 'Bravo!',
          'Astounding! 90 points. What a monumental achievement!');
    } else {
      if (isCorrect) {
        if (_sumOfPoints >= 100) {
          _sumOfPoints = 100;
        }
        _showCongratsDialog(context);
        await Future.delayed(Duration(seconds: 3));
        Navigator.pop(context);
      }
    }

    if (_sumOfPoints >= 100) {
      _enableTextField = false;
      _sumOfPoints = 100;
      AddUser(subjectId, themeId, testId, _sumOfPoints).addOrUpdateUserPoints();
      _showFinishDialog(
          context,
          'Congratulations!',
          'You have successfully reached the maximum score.',
          testId,
          _correctAnswersInRow.toString(),
          formatMilliseconds());
      _finished = true;
      notifyListeners();
    }
  }

  void moveToNextQuestion() {
    _selectNextQuestion();
    _answered = false;
    _enableTextField = true;
  }

  Future<void> _handleCorrectAnswer(BuildContext context) async {
    int startIncrement = 10 - _sumOfPoints ~/ 10;
    int currentIncrement = startIncrement;
    bool hasSkippedDecrement = currentIncrement != 10;
    if (_sumOfPoints < 70) {
      _sumOfPoints += currentIncrement;
      _lastScoreChange = currentIncrement;
      if (!hasSkippedDecrement && currentIncrement > 4) {
        currentIncrement--;
      } else {
        hasSkippedDecrement = true;
      }

      if (currentIncrement < 4) {
        currentIncrement = 4;
      }
    } else if (_sumOfPoints >= 70 && _sumOfPoints < 80) {
      currentIncrement = 3;
      _lastScoreChange = currentIncrement;
      _sumOfPoints += currentIncrement;
    } else {
      currentIncrement = 2;
      _lastScoreChange = currentIncrement;
      _sumOfPoints += currentIncrement;
    }
    _selectNextQuestion();
    notifyListeners();
  }

  void _handleIncorrectAnswer(BuildContext context) {
    int pointsToDeduct;
    if (_sumOfPoints == 0) {
      pointsToDeduct = 0;
    } else if (_sumOfPoints <= 10 && _sumOfPoints > 0) {
      pointsToDeduct = 1;
    } else if (_sumOfPoints > 10 && _sumOfPoints < 60) {
      pointsToDeduct = _sumOfPoints ~/ 10;
    } else if (_sumOfPoints >= 60 && _sumOfPoints < 70) {
      pointsToDeduct = (_sumOfPoints ~/ 10) - 1;
    } else {
      pointsToDeduct = (_sumOfPoints ~/ 10) - 2;
    }

    _lastScoreChange = pointsToDeduct;
    _sumOfPoints -= pointsToDeduct;

    notifyListeners();
  }

  void showCongratulationsDialog(
      BuildContext context, String title, String text) {
    String asset = 'assets/lottie_files/Animation - 1714309219664.json';
    if (_seventydialogshown == true &&
        _eightytydialogshown == false &&
        _ninetydialogshown == false) {
      asset = 'assets/lottie_files/Animation - 1714309219664 (1).json';
    } else if (_seventydialogshown == true &&
        _eightytydialogshown == true &&
        _ninetydialogshown == false) {
      asset = 'assets/lottie_files/Animation - 1714309219664 (2).json';
    } else if (_seventydialogshown == true &&
        _eightytydialogshown == true &&
        _ninetydialogshown == true) {
      asset = 'assets/lottie_files/Animation   1714309219664 (3).json';
    }
    Dialogs.materialDialog(
      color: Colors.white,
      msg: text,
      title: title,
      lottieBuilder: Lottie.asset(asset, fit: BoxFit.contain),
      context: context,
      actions: [
        IconsButton(
          onPressed: () {
            Navigator.pop(context);
          },
          text: 'Claim',
          iconData: Icons.done,
          color: Colors.blue,
          textStyle: TextStyle(color: Colors.white),
          iconColor: Colors.white,
        ),
      ],
    );
  }

  void _showCongratsDialog(BuildContext context) {
    const words = [
      "Super",
      "Wonderful",
      "Fantastic",
      "Excellent",
      "Good job",
      "Incredible",
      "Outstanding",
      "Remarkable",
      "Impressive",
      "Brilliant"
    ];
    final randomWord = words[Random().nextInt(words.length)];
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.check_circle_outline, color: Colors.green, size: 60),
              Text(
                randomWord,
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 36,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showFinishDialog(BuildContext context, String title, String text,
      String testName, String correctAnswers, String time) {
    String asset = 'assets/lottie_files/Animation - 1714309219664.json';
    Dialogs.materialDialog(
      color: Colors.white,
      msg: text,
      title: title,
      lottieBuilder: Lottie.asset(
          'assets/lottie_files/Animation - 1714309219664.json',
          fit: BoxFit.contain),
      context: context,
      actions: [
        IconsButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ReviewPage(
                    title: testName,
                    correctAnswer: correctAnswers,
                    timer: time,
                  );
                },
              ),
            );
          },
          text: 'Claim',
          iconData: Icons.done,
          color: Colors.blue,
          textStyle: TextStyle(color: Colors.white),
          iconColor: Colors.white,
        ),
      ],
    );
  }

  String formatMilliseconds() {
    int seconds = (_stopWatch.elapsedMilliseconds / 1000).floor();
    int minutes = (seconds / 60).floor();
    seconds = seconds % 60;

    String minutesStr = minutes.toString().padLeft(2, '0');
    String secondsStr = seconds.toString().padLeft(2, '0');

    return "$minutesStr:$secondsStr";
  }

  void storeValueHive(String name, int score, String key) async {
    var scoreBox = await Hive.openBox('score');
    scoreBox.put(key, score);
  }

  Future<void> storeValue(
      String subjectId, String themeId, String testId) async {
    UserService().getTestData(subjectId, themeId, testId).then((testData) {
      final prevScore = testData?.points ?? 0;
      if (prevScore <= _sumOfPoints) {
        AddUser(subjectId, themeId, testId, _sumOfPoints)
            .addOrUpdateUserPoints();
      }
    }).catchError((error) {
      print('Error fetching previous score: $error');
    });
    AddUser(subjectId, themeId, testId, _sumOfPoints)
        .addOrUpdateUserData(_passedQuestions, _stopWatch.elapsedMilliseconds);
  }

  void resetTest(String subject, String theme, String test) {
    if (!_resetted) {
      _sumOfPoints = 0;
      _progressBarValue = 0;
    }
    _resetted = true;
    notifyListeners();
  }
}
