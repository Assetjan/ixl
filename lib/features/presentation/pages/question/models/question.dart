class Question {
  final int id;
  final String text;
  String difficulty;
  String category;
  LayOutOption? correctAnswer;
  String userAnswer = '';
  Question({required this.text,
    required this.id,
    required this.difficulty,
    required this.category,
    required this.correctAnswer,});

  Question copyWith() {
    return Question(
      id: id,
      text: text,
      difficulty: difficulty,
      category: category,
      correctAnswer: correctAnswer,
    );
  }  
}

class LayOutOption {
  final String text;
  final bool isCorrect;

  const LayOutOption({
    required this.text,
    required this.isCorrect,
  });
}

final questionsList = [
  Question(
    text: "1 + 1 =?",
    difficulty: "Easy",
    category: "Math",
    id: 0,
    correctAnswer:
        const LayOutOption(text: "2", isCorrect: true),
  ),
  Question(
    text:
        "2 + 2 =?",
    difficulty: "Easy",    
    category: "Math",
    id: 1,
    correctAnswer: const LayOutOption(text: "4", isCorrect: true),
  ),

  Question(
    text:
        "5 - 3 =?",
    difficulty: "Normal",    
    category: "Math",
    id: 2,
    correctAnswer: const LayOutOption(text: "2", isCorrect: true),
  ),

  Question(
    text:
        "7 - 7 =?",
    difficulty: "Hard",    
    category: "Math",
    id: 3,
    correctAnswer:
        const LayOutOption(text: "0 ", isCorrect: true),
  ),
];
