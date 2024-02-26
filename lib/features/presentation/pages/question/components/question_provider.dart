import 'dart:math';
import 'package:flutter/material.dart';
import 'package:ixl/features/presentation/pages/question/models/question.dart';

class QuestionProvider extends ChangeNotifier {
  int _currentQuestionIndex = 0;
  final List<Question> _questionsList = questionsList;
  double _progressBarValue = 0.0;

  int get currentQuestionIndex => _currentQuestionIndex;
  Question get currentQuestion => _questionsList[_currentQuestionIndex];
  double get progressBarValue => _progressBarValue;

  void moveToNextQuestion() {
    if (_currentQuestionIndex < _questionsList.length - 1) {
      _currentQuestionIndex++;
    } else {
      // Handle when all questions are answered
      _currentQuestionIndex = 0; // Reset to the first question
    }
    notifyListeners();
  }

  void checkUserAnswer(BuildContext context, String answer) {
    final currentQuestion = _questionsList[_currentQuestionIndex];
    if (currentQuestion.correctAnswer == answer) {
      _handleCorrectAnswer();
    } else {
      _handleIncorrectAnswer(context);
    }
    _progressBarValue = (_currentQuestionIndex + 1) / _questionsList.length * 100;
    notifyListeners();
  }

  void _handleCorrectAnswer() {
  final currentQuestion = _questionsList[_currentQuestionIndex];
  final difficulty = currentQuestion.difficulty;

  int incrementFactor = 0;
  switch (difficulty) {
    case "Surefire":
      incrementFactor = 10;
      break;
    case "Effortless":
      incrementFactor = 9;
      break;
    case "Elementary":
      incrementFactor = 8;
      break;
    case "Easy":
      incrementFactor = 7;
      break;
    case "Doable":
      incrementFactor = 6;
      break;
    case "Difficult":
      incrementFactor = 5;
      break;
    case "Challenging":
      incrementFactor = 4;
      break;
    case "Impossible":
      incrementFactor = 3;
      break;
    case "Hard":
      incrementFactor = 2;
      break;
    case "Very hard":
      incrementFactor = _progressBarValue < 98 ? 1 : 0;
      break;
    default:
      break;
  }

  _progressBarValue = (_progressBarValue + incrementFactor).clamp(0.0, 100.0);
  if (_progressBarValue >= 100 && difficulty == "Very hard") {
    // Open a new page as progress bar reaches 100 in "Very hard" category
  } else if (_progressBarValue >= 28 && difficulty == "Elementary") {
    _selectQuestionByDifficulty("Elementary");
  } else if (_progressBarValue >= 10 && difficulty == "Effortless") {
    _selectQuestionByDifficulty("Effortless");
  } else {
    moveToNextQuestion();
  }

  notifyListeners();
}

void _handleIncorrectAnswer(BuildContext context) {
  final currentQuestion = _questionsList[_currentQuestionIndex];
  final difficulty = currentQuestion.difficulty;

  int decrementFactor = 0;
  switch (difficulty) {
    case "Effortless":
      decrementFactor = 1;
      break;
    case "Elementary":
      decrementFactor = 2;
      break;
    case "Easy":
      decrementFactor = 3;
      break;
    case "Doable":
    case "Difficult":
    case "Challenging":
    case "Impossible":
    case "Hard":
    case "Very hard":
      decrementFactor = 4;
      break;
    default:
      break;
  }

  _progressBarValue -= decrementFactor;

  if (_progressBarValue < 10) {
    _selectQuestionByDifficulty("Surefire");
  } else if (_progressBarValue < 28) {
    _selectQuestionByDifficulty("Effortless");
  }

  notifyListeners();
  moveToNextQuestion();
}

  void _selectQuestionByDifficulty(String difficulty) {
    final random = Random();
    final filteredQuestions = _questionsList
        .where((question) => question.difficulty == difficulty)
        .toList();
    if (filteredQuestions.isNotEmpty) {
      _currentQuestionIndex = random.nextInt(filteredQuestions.length);
    } else {
      // Handle if no questions available for the given difficulty
    }
  }
}
