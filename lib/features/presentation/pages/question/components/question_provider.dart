import 'package:flutter/material.dart';
import 'package:ixl/features/presentation/pages/question/models/question.dart';

class QuestionProvider extends ChangeNotifier {
  int _currentQuestionIndex = 0;
  List<Question> _questionsList = questionsList;

  int get currentQuestionIndex => _currentQuestionIndex;
  Question get currentQuestion => _questionsList[_currentQuestionIndex];

  void moveToNextQuestion() {
    if (_currentQuestionIndex < _questionsList.length - 1) {
      _currentQuestionIndex++;
      notifyListeners();
    } else {
      // Handle when there are no more questions
    }
  }

  void updateUserAnswer(String answer) {
    _questionsList[_currentQuestionIndex].userAnswer = answer;
    notifyListeners();
  }

  void checkUserAnswer(BuildContext context) {
    if (currentQuestion.correctAnswer!.text == currentQuestion.userAnswer) {
      moveToNextQuestion();
      updateUserAnswer('');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Incorrect answer!'),
        ),
      );
    }
    notifyListeners();
  }
}
