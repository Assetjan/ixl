class Question {
  final int id;
  final String text;
  String difficulty;
  String category;
  String correctAnswer;
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

// class LayOutOption {
//   final String text;
//   final bool isCorrect;

//   const LayOutOption({
//     required this.text,
//     required this.isCorrect,
//   });
// }

final questionsList = [
  Question(
    text: "1 + 1 =?",
    difficulty: "Surefire",
    category: "Math",
    id: 0,
    correctAnswer: "2",
  ),
  Question(
    text:
        "2 + 2 =?",
    difficulty: "Surefire",    
    category: "Math",
    id: 1,
    correctAnswer: "4",
  ),

  Question(
    text:
        "5 - 3 =?",
    difficulty: "Surefire",    
    category: "Math",
    id: 2,
    correctAnswer: "2",
  ),

  Question(
    text:
        "17 - 7 =?",
    difficulty: "Effortless",    
    category: "Math",
    id: 3,
    correctAnswer: "10",
  ),

  Question(
    text:
        "15 - 7 =?",
    difficulty: "Effortless",    
    category: "Math",
    id: 4,
    correctAnswer: "8",
  ),

  Question(
    text:
        "12 - 2 =?",
    difficulty: "Effortless",    
    category: "Math",
    id: 5,
    correctAnswer: "10",
  ),

  Question(
    text:
        "22 - 7 =?",
    difficulty: "Elementary",    
    category: "Math",
    id: 6,
    correctAnswer: "15",
  ),

  Question(
    text:
        "29 - 5 =?",
    difficulty: "Elementary",    
    category: "Math",
    id: 7,
    correctAnswer: "24",
  ),

  Question(
    text:
        "25 - 5 =?",
    difficulty: "Elementary",    
    category: "Math",
    id: 8,
    correctAnswer: "20",
  ),

  Question(
    text:
        "35 - 2 =?",
    difficulty: "Easy",    
    category: "Math",
    id: 9,
    correctAnswer: "33",
  ),

  Question(
    text:
        "37 - 5 =?",
    difficulty: "Easy",    
    category: "Math",
    id: 10,
    correctAnswer: "32",
  ),

  Question(
    text:
        "39 - 3 =?",
    difficulty: "Easy",    
    category: "Math",
    id: 11,
    correctAnswer: "36",
  ),

  Question(
    text:
        "45 - 3 =?",
    difficulty: "Doable",    
    category: "Math",
    id: 12,
    correctAnswer: "42",
  ),

  Question(
    text:
        "40 - 10 =?",
    difficulty: "Doable",    
    category: "Math",
    id: 13,
    correctAnswer: "30",
  ),

  Question(
    text:
        "47 - 5 =?",
    difficulty: "Doable",    
    category: "Math",
    id: 14,
    correctAnswer: "42",
  ),

  Question(
    text:
        "55 - 5 =?",
    difficulty: "Difficult",    
    category: "Math",
    id: 15,
    correctAnswer: "50",
  ),

  Question(
    text:
        "59 - 8 =?",
    difficulty: "Difficult",    
    category: "Math",
    id: 16,
    correctAnswer: "51",
  ),

  Question(
    text:
        "53 - 1 =?",
    difficulty: "Difficult",    
    category: "Math",
    id: 17,
    correctAnswer: "52",
  ),

  Question(
    text:
        "65 - 5 =?",
    difficulty: "Challenging",    
    category: "Math",
    id: 18,
    correctAnswer: "60",
  ),

  Question(
    text:
        "67 - 5 =?",
    difficulty: "Challenging",    
    category: "Math",
    id: 19,
    correctAnswer: "62",
  ),

  Question(
    text:
        "63 - 2 =?",
    difficulty: "Challenging",    
    category: "Math",
    id: 20,
    correctAnswer: "61",
  ),

  Question(
    text:
        "70 - 5 =?",
    difficulty: "Impossible",    
    category: "Math",
    id: 21,
    correctAnswer: "65",
  ),

  Question(
    text:
        "70 - 5 =?",
    difficulty: "Impossible",    
    category: "Math",
    id: 22,
    correctAnswer: "65",
  ),

  Question(
    text:
        "77 - 7 =?",
    difficulty: "Impossible",    
    category: "Math",
    id: 23,
    correctAnswer: "70",
  ),

  Question(
    text:
        "85 - 10 =?",
    difficulty: "Hard",    
    category: "Math",
    id: 24,
    correctAnswer: "75",
  ),

  Question(
    text:
        "88 - 3 =?",
    difficulty: "Hard",    
    category: "Math",
    id: 25,
    correctAnswer: "85",
  ),

  Question(
    text:
        "89 - 15 =?",
    difficulty: "Hard",    
    category: "Math",
    id: 26,
    correctAnswer: "74",
  ),

  Question(
    text:
        "90 - 15 =?",
    difficulty: "Very hard",    
    category: "Math",
    id: 27,
    correctAnswer: "75",
  ),

  Question(
    text:
        "95 - 5 =?",
    difficulty: "Very hard",    
    category: "Math",
    id: 28,
    correctAnswer: "90",
  ),

  Question(
    text:
        "90 - 10 =?",
    difficulty: "Very hard",    
    category: "Math",
    id: 29,
    correctAnswer: "80",
  ),
];
