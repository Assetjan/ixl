import 'package:flutter_test/flutter_test.dart';
import 'package:ixl/features/presentation/pages/question/components/question_provider.dart';

void main() {
  group('QuestionProvider Tests', () {
    test('Initial values are set correctly', () {
      final provider = QuestionProvider();

      expect(provider.currentQuestionIndex, 0);
      expect(provider.progressBarValue, 0.0);
    });

    test('Move to next question updates current index correctly', () {
      final provider = QuestionProvider();
      provider.moveToNextQuestion();

      expect(provider.currentQuestionIndex, 1);
    });
  }
  );
}
