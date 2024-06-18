class Question {
  final int id;
  final String text;
  String difficulty;
  String category;
  String correctAnswer;
  String userAnswer;
  String explanation;
  final String subjectId;
  final String themeId;
  final String testId;
  final String keyboardType;
  final String title;

  Question({
    required this.id,
    required this.title,
    required this.text,
    required this.difficulty,
    required this.category,
    required this.correctAnswer,
    this.userAnswer = '',
    required this.explanation,
    required this.subjectId,
    required this.themeId,
    required this.testId,
    required this.keyboardType,
  });

  Question copyWith({String? userAnswer}) {
    return Question(
      id: this.id,
      title: this.title,
      text: this.text,
      difficulty: this.difficulty,
      category: this.category,
      correctAnswer: this.correctAnswer,
      userAnswer: userAnswer ?? this.userAnswer,
      explanation: this.explanation,
      subjectId: this.subjectId,
      themeId: this.themeId,
      testId: this.testId,
      keyboardType: this.keyboardType,
    );
  }
}

Map<String, Map<String, List<Question>>> questionsList = {
  'Powers': {
    'Power operations': [
      Question(
          id: 0,
          title: 'Write your answer like this: 25^7',
          text: '5⁴×5⁶=',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '5^10',
          explanation: '''
The expression 5⁴ × 5⁶ is equal to 5¹⁰. Because when you multiply two powers with
the same base, you can add their exponents.
So, 5⁴ × 5⁶ simplifies to 5⁴+⁶ or 5¹⁰.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 1,
          title: 'Write your answer like this: 25^7',
          text: '3⁵×3²=',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '3^7',
          explanation: '''
The expression 3⁵ × 3² is equal to 3⁷. Because when you multiply two powers with
the same base, you can add their exponents.
So, 3⁵ × 3² simplifies to 3⁵+² or 3⁷.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 2,
          title: 'Write your answer like this: 25^7',
          text: '7⁴×7³=',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '7^7',
          explanation: '''
The expression 7⁴ × 7³ is equal to 7⁷. Because when you multiply two powers with
the same base, you can add their exponents.
So, 7⁴ × 7³ simplifies to 7⁴+³ or 7⁷.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 3,
          title: 'Write your answer like this: 25^7',
          text: '5⁶×5²=',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '5^8',
          explanation: '''
The expression 5⁶ × 5² is equal to 5⁸. Because when you multiply two powers with
the same base, you can add their exponents.
So, 5⁶ × 5² simplifies to 5⁶+² or 5⁸.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 4,
          title: 'Write your answer like this: 25^7',
          text: '10³×10⁴=',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '10^7',
          explanation: '''
The expression 10³ × 10⁴ is equal to 10⁷. Because when you multiply two powers with
the same base, you can add their exponents.
So, 10³ × 10⁴ simplifies to 10³+⁴ or 10⁷.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 5,
          title: 'Write your answer like this: 25^7',
          text: '4⁸×4²=',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '4^10',
          explanation: '''
The expression 4⁸ × 4² is equal to 4¹⁰. Because when you multiply two powers with
the same base, you can add their exponents.
So, 4⁸ × 4² simplifies to 4⁸+² or 4¹⁰.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 6,
          title: 'Write your answer like this: 25^7',
          text: '9³×9⁵=',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '9^8',
          explanation: '''
The expression 9³ × 9⁵ is equal to 9⁸. Because when you multiply two powers with
the same base, you can add their exponents.
So, 9³ × 9⁵ simplifies to 9³+⁵ or 9⁸.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 7,
          title: 'Write your answer like this: 25^7',
          text: '2⁶ × 2⁵ =',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '2^11',
          explanation: '''
The expression 2⁶ × 2⁵ is equal to 2¹¹. Because when you multiply two powers with
the same base, you can add their exponents.
So, 2⁶ × 2⁵ simplifies to 2⁶ + ⁵ or 2¹¹.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 8,
          title: 'Write your answer like this: 25^7',
          text: '8⁴ × 8³ =',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '8^7',
          explanation: '''
The expression 8⁴ × 8³ is equal to 8⁷. Because when you multiply two powers with
the same base, you can add their exponents.
So, 8⁴ × 8³ simplifies to 8⁴ + ³ or 8⁷.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 9,
          title: 'Write your answer like this: 25^7',
          text: '6² × 6⁶ =',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '6^8',
          explanation: '''
The expression 6² × 6⁶ is equal to 6⁸. Because when you multiply two powers with
the same base, you can add their exponents.
So, 6² × 6⁶ simplifies to 6² + ⁶ or 6⁸.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 10,
          title: 'Write your answer like this: 25^7',
          text: '3⁷×3²=',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '3^9',
          explanation: '''
The expression 3⁷ × 3² is equal to 3⁹. Because when you multiply two powers with
the same base, you can add their exponents.
So, 3⁷ × 3² simplifies to 3⁷+² or 3⁹.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 11,
          title: 'Write your answer like this: 25^7',
          text: '7⁵×7⁴=',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '7^9',
          explanation: '''
The expression 7⁵ × 7⁴ is equal to 7⁹. Because when you multiply two powers with
the same base, you can add their exponents.
So, 7⁵ × 7⁴ simplifies to 7⁵+⁴ or 7⁹.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 12,
          title: 'Write your answer like this: 25^7',
          text: '5⁴×5³=',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '5^7',
          explanation: '''
The expression 5⁴ × 5³ is equal to 5⁷. Because when you multiply two powers with
the same base, you can add their exponents.
So, 5⁴ × 5³ simplifies to 5⁴+³ or 5⁷.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 13,
          title: 'Write your answer like this: 25^7',
          text: '4²×4³=',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '4^5',
          explanation: '''
The expression 4² × 4³ is equal to 4⁵. Because when you multiply two powers with
the same base, you can add their exponents.
So, 4² × 4³ simplifies to 4²+³ or 4⁵.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 14,
          title: 'Write your answer like this: 25^7',
          text: '10²×10⁶=',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '10^8',
          explanation: '''
The expression 10² × 10⁶ is equal to 10⁸. Because when you multiply two powers with
the same base, you can add their exponents.
So, 10² × 10⁶ simplifies to 10²+⁶ or 10⁸.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 15,
          title: 'Write your answer like this: 25^7',
          text: '9⁷×9²=',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '9^9',
          explanation: '''
The expression 9⁷ × 9² is equal to 9⁹. Because when you multiply two powers with
the same base, you can add their exponents.
So, 9⁷ × 9² simplifies to 9⁷+² or 9⁹.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 16,
          title: 'Write your answer like this: 25^7',
          text: '2⁸×2¹⁰=',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '2^18',
          explanation: '''
The expression 2⁸ × 2¹⁰ is equal to 2¹⁸. Because when you multiply two powers with
the same base, you can add their exponents.
So, 2⁸ × 2¹⁰ simplifies to 2⁸+¹⁰ or 2¹⁸.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 17,
          title: 'Write your answer like this: 25^7',
          text: '6²×6⁸=',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '6^10',
          explanation: '''
The expression 6² × 6⁸ is equal to 6¹⁰. Because when you multiply two powers with the same base, you can add their exponents.
So, 6² × 6⁸ simplifies to 6²+⁸ or 6¹⁰.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 18,
          title: 'Write your answer like this: 25^7',
          text: '2⁶×2¹¹=',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '2^17',
          explanation: '''
The expression 2⁶ × 2¹¹ is equal to 2¹⁷. Because when you multiply two powers with
the same base, you can add their exponents.
So, 2⁶ × 2¹¹ simplifies to 2⁶+¹¹ or 2¹⁷.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 19,
          title: 'Write your answer like this: 25^7',
          text: '5²×5⁷=',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '5^9',
          explanation: '''
The expression 5² × 5⁷ is equal to 5⁹. Because when you multiply two powers with
the same base, you can add their exponents.
So, 5² × 5⁷ simplifies to 5²+⁷ or 5⁹.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 20,
          title: 'Write your answer like this: 25^7',
          text: '3⁹×3²=',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '3^11',
          explanation: '''
The expression 3⁹ × 3² is equal to 3¹¹. Because when you multiply two powers with
the same base, you can add their exponents.
So, 3⁹ × 3² simplifies to 3⁹+² or 3¹¹.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 21,
          title: 'Write your answer like this: 25^7',
          text: '8³×8²=',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '8^5',
          explanation: '''
The expression 8³ × 8² is equal to 8⁵. Because when you multiply two powers with
the same base, you can add their exponents.
So, 8³ × 8² simplifies to 8³+² or 8⁵.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 22,
          title: 'Write your answer like this: 25^7',
          text: '2⁵×2⁷=',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '2^12',
          explanation: '''
The expression 2⁵ × 2⁷ is equal to 2¹². Because when you multiply two powers with
the same base, you can add their exponents.
So, 2⁵ × 2⁷ simplifies to 2⁵+⁷ or 2¹².''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 23,
          title: 'Write your answer like this: 25^7',
          text: '10²×10⁸=',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '10^10',
          explanation: '''
The expression 10² × 10⁸ is equal to 10¹⁰. Because when you multiply two powers with
the same base, you can add their exponents.
So, 10² × 10⁸ simplifies to 10²+⁸ or 10¹⁰.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 24,
          title: 'Write your answer like this: 25^7',
          text: '3⁶×3¹¹=',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '3^17',
          explanation: '''
The expression 3⁶ × 3¹¹ is equal to 3¹⁷. Because when you multiply two powers with
the same base, you can add their exponents.
So, 3⁶ × 3¹¹ simplifies to 3⁶+¹¹ or 3¹⁷.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 25,
          title: 'Write your answer like this: 25^7',
          text: '7²×7⁹=',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '7^11',
          explanation: '''
The expression 7² × 7⁹ is equal to 7¹¹. Because when you multiply two powers with
the same base, you can add their exponents.
So, 7² × 7⁹ simplifies to 7²+⁹ or 7¹¹.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 26,
          title: 'Write your answer like this: 25^7',
          text: '8³×8³=',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '8^6',
          explanation: '''
The expression 8³ × 8³ is equal to 8⁶. Because when you multiply two powers with
the same base, you can add their exponents.
So, 8³ × 8³ simplifies to 8³+³ or 8⁶.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 27,
          title: 'Write your answer like this: 25^7',
          text: '10⁶×10³=',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '10^9',
          explanation: '''
The expression 10⁶ × 10³ is equal to 10⁹. Because when you multiply two powers with
the same base, you can add their exponents.
So, 10⁶ × 10³ simplifies to 10⁶+³ or 10⁹.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 28,
          title: 'Write your answer like this: 25^7',
          text: '11⁵×11³=',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '11^8',
          explanation: '''
The expression 11⁵ × 11³ is equal to 11⁸. Because when you multiply two powers with
the same base, you can add their exponents.
So, 11⁵ × 11³ simplifies to 11⁵+³ or 11⁸.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 29,
          title: 'Write your answer like this: 25^7',
          text: '20¹²×20¹¹=',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '20^23',
          explanation: '''
The expression 20¹² × 20¹¹ is equal to 20²³. Because when you multiply two powers with
the same base, you can add their exponents.
So, 20¹² × 20¹¹ simplifies to 20¹²+¹¹ or 20²³.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 30,
          title: 'Write your answer like this: 25^7',
          text: '14⁴⁰×14⁵=',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '14^45',
          explanation: '''
The expression 14⁴⁰ × 14⁵ is equal to 14⁴⁵. Because when you multiply two powers with
the same base, you can add their exponents.
So, 14⁴⁰ × 14⁵ simplifies to 14⁴⁰+⁵ or 14⁴⁵.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 31,
          title: 'Write your answer like this: 25^7',
          text: '5¹⁴×5⁷=',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '5^21',
          explanation: '''
The expression 5¹⁴ × 5⁷ is equal to 5²¹. Because when you multiply two powers with
the same base, you can add their exponents.
So, 5¹⁴ × 5⁷ simplifies to 5¹⁴+⁷ or 5²¹.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 32,
          title: 'Write your answer like this: 25^7',
          text: '6¹⁰×6²=',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '6^12',
          explanation: '''
The expression 6¹⁰ × 6² is equal to 6¹². Because when you multiply two powers with
the same base, you can add their exponents.
So, 6¹⁰ × 6² simplifies to 6¹⁰+² or 6¹².''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 33,
          title: 'Write your answer like this: 25^7',
          text: '8⁸×8⁸=',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '8^16',
          explanation: '''
The expression 8⁸ × 8⁸ is equal to 8¹⁶. Because when you multiply two powers with
the same base, you can add their exponents.
So, 8⁸ × 8⁸ simplifies to 8⁸+⁸ or 8¹⁶.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 34,
          title: 'Write your answer like this: 25^7',
          text: '21¹⁴×21⁶=',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '21^20',
          explanation: '''
The expression 21¹⁴ × 21⁶ is equal to 21²⁰. Because when you multiply two powers with
the same base, you can add their exponents.
So, 21¹⁴ × 21⁶ simplifies to 21¹⁴+⁶ or 21²⁰.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 35,
          title: 'Write your answer like this: 25^7',
          text: '34²³×34²=',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '34^25',
          explanation: '''
The expression 34²³ × 34² is equal to 34²⁵. Because when you multiply two powers with
the same base, you can add their exponents.
So, 34²³ × 34² simplifies to 34²³+² or 34²⁵.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 36,
          title: 'Write your answer like this: 25^7',
          text: '10⁴×10⁵=',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '10^9',
          explanation: '''
The expression 10⁴ × 10⁵ is equal to 10⁹. Because when you multiply two powers with
the same base, you can add their exponents.
So, 10⁴ × 10⁵ simplifies to 10⁴+⁵ or 10⁹.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 37,
          title: 'Write your answer like this: 25^7',
          text: '55³×55⁹=',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '55^12',
          explanation: '''
The expression 55³ × 55⁹ is equal to 55¹². Because when you multiply two powers with
the same base, you can add their exponents.
So, 55³ × 55⁹ simplifies to 55³+⁹ or 55¹².''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 38,
          title: 'Write your answer like this: 25^7',
          text: '20²⁰×20⁵=',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '20^25',
          explanation: '''
The expression 20²⁰ × 20⁵ is equal to 20²⁵. Because when you multiply two powers with
the same base, you can add their exponents.
So, 20²⁰ × 20⁵ simplifies to 20²⁰+⁵ or 20²⁵.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 39,
          title: 'Write your answer like this: 25^7',
          text: '12²⁴×12⁴²=',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '12^66',
          explanation: '''
The expression 12²⁴ × 12⁴² is equal to 12⁶⁶. Because when you multiply two powers with
the same base, you can add their exponents.
So, 12²⁴ × 12⁴² simplifies to 12²⁴+⁴² or 12⁶⁶.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 40,
          title: 'Write your answer like this: 25^7',
          text: '5⁶⁶×5³⁴=',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '5^100',
          explanation:
              ''' The expression 5⁶⁶ × 5³⁴ is equal to 5¹⁰⁰. Because when you multiply two powers with the same base, you can add their exponents. So, 5⁶⁶ × 5³⁴ simplifies to 5⁶⁶+³⁴ or 5¹⁰⁰.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 41,
          title: 'Write your answer like this: 25^7',
          text: '7³×7⁷=',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '7^10',
          explanation:
              ''' The expression 7³ × 7⁷ is equal to 7¹⁰. Because when you multiply two powers with the same base, you can add their exponents. So, 7³ × 7⁷ simplifies to 7³+⁷ or 7¹⁰.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 42,
          title: 'Write your answer like this: 25^7',
          text: '8⁹×8⁹=',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '8^18',
          explanation:
              ''' The expression 8⁹ × 8⁹ is equal to 8¹⁸. Because when you multiply two powers with the same base, you can add their exponents. So, 8⁹ × 8⁹ simplifies to 8⁹+⁹ or 8¹⁸.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 43,
          title: 'Write your answer like this: 25^7',
          text: '6⁵⁰×6⁵=',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '6^55',
          explanation:
              ''' The expression 6⁵⁰ × 6⁵ is equal to 6⁵⁵. Because when you multiply two powers with the same base, you can add their exponents. So, 6⁵⁰ × 6⁵ simplifies to 6⁵⁰+⁵ or 6⁵⁵.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 44,
          title: 'Write your answer like this: 25^7',
          text: '80⁴×80⁹=',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '80^13',
          explanation:
              ''' The expression 80⁴ × 80⁹ is equal to 80¹³. Because when you multiply two powers with the same base, you can add their exponents. So, 80⁴ × 80⁹ simplifies to 80⁴+⁹ or 80¹³.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 45,
          title: 'Write your answer like this: 25^7',
          text: '121⁴×121=',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '121^5',
          explanation: '''
The expression 121⁴ × 121 is equal to 121⁵. Because when you multiply two powers with
the same base, you can add their exponents.
So, 121⁴ × 121 simplifies to 121⁴+¹ or 121⁵.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 46,
          title: 'Write your answer like this: 25^7',
          text: '55⁵×55⁵=',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '55^10',
          explanation: '''
The expression 55⁵ × 55⁵ is equal to 55¹⁰. Because when you multiply two powers with
the same base, you can add their exponents.
So, 55⁵ × 55⁵ simplifies to 55⁵+⁵ or 55¹⁰.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 47,
          title: 'Write your answer like this: 25^7',
          text: '98³×98⁶=',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '98^9',
          explanation: '''
The expression 98³ × 98⁶ is equal to 98⁹. Because when you multiply two powers with
the same base, you can add their exponents.
So, 98³ × 98⁶ simplifies to 98³+⁶ or 98⁹.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 48,
          title: 'Write your answer like this: 25^7',
          text: '69³×69⁸=',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '69^11',
          explanation: '''
The expression 69³ × 69⁸ is equal to 69¹¹. Because when you multiply two powers with
the same base, you can add their exponents.
So, 69³ × 69⁸ simplifies to 69³+⁸ or 69¹¹.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 49,
          title: 'Write your answer like this: 25^7',
          text: '32¹⁷×32⁹=',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '32^26',
          explanation: '''
The expression 32¹⁷ × 32⁹ is equal to 32²⁶. Because when you multiply two powers with
the same base, you can add their exponents.
So, 32¹⁷ × 32⁹ simplifies to 32¹⁷+⁹ or 32²⁶.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 50,
          title: 'Write your answer like this: 25^7',
          text: '18^(-4) × 18^6 =',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '18^2',
          explanation: '''
The expression 18^(-4) × 18^6 equals 18^2. When you multiply two powers with the same base, you add their exponents.
So, 18^(-4) × 18^6 simplifies to 18^(-4+6) or 18^2.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 51,
          title: 'Write your answer like this: 25^7',
          text: '15^16 × 15^6 =',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '15^22',
          explanation: '''
The expression 15^16 × 15^6 is equal to 15^22. When you multiply two powers with the same base, you add their exponents.
So, 15^16 × 15^6 simplifies to 15^(16+6) or 15^22.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 52,
          title: 'Write your answer like this: 25^7',
          text: '18^67 × 18^(-13) =',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '18^54',
          explanation: '''
The expression 18^67 × 18^(-13) equals 18^54. Because when you multiply two powers with the same base, you add their exponents.
So, 18^67 × 18^(-13) simplifies to 18^(67-13) or 18^54.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 53,
          title: 'Write your answer like this: 25^7',
          text: '7^40 × 7^(-50) =',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '7^-10',
          explanation: '''
The expression 7^40 × 7^(-50) equals 7^(-10). When you multiply two powers with the same base, you add their exponents.
So, 7^40 × 7^(-50) simplifies to 7^(40-50) or 7^(-10).''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 54,
          title: 'Write your answer like this: 25^7',
          text: '90^58 × 90^20 =',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '90^78',
          explanation: '''
The expression 90^58 × 90^20 equals 90^78. Because when you multiply two powers with the same base, you add their exponents.
So, 90^58 × 90^20 simplifies to 90^(58+20) or 90^78.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 55,
          title: 'Write your answer like this: 25^7',
          text: '17^5 × 17^(-17) =',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '17^-12',
          explanation: '''
The expression 17^5 × 17^(-17) equals 17^(-12). When multiplying two powers with the same base, their exponents are added.
Thus, 17^5 × 17^(-17) simplifies to 17^(5-17) or 17^(-12).''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 56,
          title: 'Write your answer like this: 25^7',
          text: '12^(-20) × 12^(-12) =',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '12^-32',
          explanation: '''
The expression 12^(-20) × 12^(-12) equals 12^(-32). By multiplying two powers with the same base, their exponents are summed.
Hence, 12^(-20) × 12^(-12) simplifies to 12^(-20-12) or 12^(-32).''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          title: 'Write your answer like this: 25^7',
          id: 57,
          text: '99^2 × 99^(-5) =',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '99^-3',
          explanation: '''
The expression 99^2 × 99^(-5) equals 99^(-3). When you multiply two powers with the same base, add their exponents.
So, 99^2 × 99^(-5) simplifies to 99^(2-5) or 99^(-3).''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 58,
          title: 'Write your answer like this: 25^7',
          text: '67^(-18) × 67^(-12) =',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '67^-30',
          explanation: '''
The expression 67^(-18) × 67^(-12) equals 67^(-30). Multiplying two powers with the same base means adding their exponents.
Thus, 67^(-18) × 67^(-12) simplifies to 67^(-18-12) or 67^(-30).''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 59,
          title: 'Write your answer like this: 25^7',
          text: '25^(-80) × 25^67 =',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '25^-13',
          explanation: '''
The expression 25^(-80) × 25^67 equals 25^(-13). When multiplying powers with the same base, their exponents are added.
Therefore, 25^(-80) × 25^67 simplifies to 25^(-80+67) or 25^(-13).''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 60,
          title: 'Write your answer like this: 25^7',
          text: '45^6 × 45^(-8) =',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '45^-2',
          explanation: '''
The expression 45^6 × 45^(-8) equals 45^(-2). When multiplying two powers with the same base, you add their exponents.
Thus, 45^6 × 45^(-8) simplifies to 45^(6-8) or 45^(-2).''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 61,
          title: 'Write your answer like this: 25^7',
          text: '88^(-45) × 88^27 =',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '88^-18',
          explanation: '''
The expression 88^(-45) × 88^27 equals 88^(-18). When you multiply two powers with the same base, their exponents are added.
Therefore, 88^(-45) × 88^27 simplifies to 88^(-45+27) or 88^(-18).''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 62,
          title: 'Write your answer like this: 25^7',
          text: '278^(-167) × 278^(-23) =',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '278^-190',
          explanation: '''
The expression 278^(-167) × 278^(-23) equals 278^(-190). Multiplying two powers with the same base involves adding their exponents.
Hence, 278^(-167) × 278^(-23) simplifies to 278^(-167-23) or 278^(-190).''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 63,
          title: 'Write your answer like this: 25^7',
          text: '72^(-90) × 72^(-20) =',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '72^-110',
          explanation: '''
The expression 72^(-90) × 72^(-20) equals 72^(-110). By multiplying two powers with the same base, their exponents are summed.
So, 72^(-90) × 72^(-20) simplifies to 72^(-90-20) or 72^(-110).''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 64,
          title: 'Write your answer like this: 25^7',
          text: '26^(-99) × 26^(-1) =',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '26^-100',
          explanation: '''
The expression 26^(-99) × 26^(-1) equals 26^(-100). When multiplying two powers with the same base, add their exponents.
Therefore, 26^(-99) × 26^(-1) simplifies to 26^(-99-1) or 26^(-100).''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 65,
          title: 'Write your answer like this: 25^7',
          text: '99⁻⁴⁵ × 99²⁷ =',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '99^-18',
          explanation: '''
The expression 99⁻⁴⁵ × 99⁻²⁷ is equal to 99⁻¹⁸. Because when you multiply two
powers with the same base, you can add their exponents.
So, it simplifies to 99^(−45) + (−27) or 99⁻¹⁸.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 66,
          title: 'Write your answer like this: 25^7',
          text: '66⁻⁵ × 66²⁰ =',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '66^15',
          explanation: '''
The expression 66⁻⁵ × 66²⁰ is equal to 66¹⁵. Because when you multiply two
powers with the same base, you can add their exponents.
So, it simplifies to 66^(−5) + 20 or 66¹⁵.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 67,
          title: 'Write your answer like this: 25^7',
          text: '77⁻²⁷⁹ × 77⁻⁸⁸ =',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '77^-367',
          explanation: '''
The expression 77⁻²⁷⁹ × 77⁻⁸⁸ is equal to 77⁻³⁶⁷. Because when you multiply two
powers with the same base, you can add their exponents.
So, it simplifies to 77^(−279) + (−88) or 77⁻³⁶⁷.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 68,
          title: 'Write your answer like this: 25^7',
          text: '77⁻²⁷⁹ × 77⁻⁸⁸ = ',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '77^-367',
          explanation: '''
The expression 77⁻²⁷⁹ × 77⁻⁸⁸ is equal to 77⁻³⁶⁷. Because when you multiply two
powers with the same base, you can add their exponents.
So, it simplifies to 77^(−279) + (−88) or 77⁻³⁶⁷.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 69,
          title: 'Write your answer like this: 25^7',
          text: '88⁻⁶ × 88¹¹ = ',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '88^5',
          explanation: '''
The expression 88⁻⁶ × 88¹¹ is equal to 88⁵. Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 88^(−6) + 11 or 88⁵.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 70,
          title: 'Write your answer like this: 25^7',
          text: '99⁶⁰ × 99⁻⁴⁰ = ',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '99^20',
          explanation: '''
The expression 99⁶⁰ × 90⁻⁴⁰ is equal to 90²⁰. Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 99^(60) + (−40) or 90²⁰.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 71,
          title: 'Write your answer like this: 25^7',
          text: '19⁸⁰ × 19⁻⁸¹ = ',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '19^-1',
          explanation: '''
The expression 19⁸⁰ × 19⁻⁸¹ is equal to 19⁻¹. Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 19^(80) + (−81) or 19⁻¹.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 72,
          title: 'Write your answer like this: 25^7',
          text: '81⁻⁹ × 81⁹ = ',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '81^0',
          explanation: '''
The expression 81⁻⁹ × 81⁹ is equal to 81⁰. Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 81^(−9) + 9 = 81⁰ = 1.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 73,
          title: 'Write your answer like this: 25^7',
          text: '40⁻⁷⁰ × 40³⁰ = ',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '40^-40',
          explanation: '''
The expression 40⁻⁷⁰ × 40³⁰ is equal to 40⁻⁴⁰. Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 40^(−70) + 30 or 40⁻⁴⁰.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 74,
          title: 'Write your answer like this: 25^7',
          text: '62¹⁷ × 62⁻³ = ',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '62^14',
          explanation: '''
The expression 62¹⁷ × 62⁻³ is equal to 62¹⁴. Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 62^(17) + (−3) or 62¹⁴.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 75,
          title: 'Write your answer like this: 25^7',
          text: '72⁻⁸⁹ × 72⁻⁶ = ',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '72^-95',
          explanation: '''
The expression 72⁻⁸⁹ × 72⁻⁶ is equal to 72⁻⁹⁵. Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 72^(−89) + (−6) or 72⁻⁹⁵.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 76,
          title: 'Write your answer like this: 25^7',
          text: '19¹⁹ × 19⁻⁹ = ',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '19^10',
          explanation: '''
The expression 19¹⁹ × 19⁻⁹ is equal to 19¹⁰. Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 19^(19) + (−9) or 19¹⁰.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 77,
          title: 'Write your answer like this: 25^7',
          text: '27²⁶ × 27⁻¹⁶ = ',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '27^10',
          explanation: '''
The expression 27²⁶ × 27⁻¹⁶ is equal to 27¹⁰. Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 27^(26) + (−16) or 27¹⁰.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 78,
          title: 'Write your answer like this: 25^7',
          text: '57⁻²⁶³ × 57⁻³⁰⁷ = ',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '57^-570',
          explanation: '''
The expression 57⁻²⁶³ × 57⁻³⁰⁷ is equal to 57⁻⁵⁷⁰. Because when you multiply two
powers with the same base, you can add their exponents.
So, it simplifies to 57^(−263) + (−307) or 57⁻⁵⁷⁰.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 79,
          title: 'Write your answer like this: 25^7',
          text: '56⁻⁵⁷ × 56¹² = ',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '56^-45',
          explanation: '''
The expression 56⁻⁵⁷ × 56¹² is equal to 56⁻⁴⁵. Because when you multiply two
powers with the same base, you can add their exponents.
So, it simplifies to 56^(−57) + 12 or 56⁻⁴⁵.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 80,
          title: 'Write your answer like this: 25^7',
          text: '91⁻⁸⁰ × 91⁻¹¹ = ',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '91^-91',
          explanation: '''
The expression 91⁻⁸⁰ × 91⁻¹¹ is equal to 91⁻⁹¹. Because when you multiply two
powers with the same base, you can add their exponents.
So, it simplifies to 91^(−80) + (−11) or 91⁻⁹¹.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 81,
          title: 'Write your answer like this: 25^7',
          text: '4⁻²⁰ × 4⁻⁸ = ',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '4^-28',
          explanation: '''
The expression 4⁻²⁰ × 4⁻⁸ is equal to 4⁻²⁸. Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 4^(−20) + (−8) or 4⁻²⁸.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 82,
          title: 'Write your answer like this: 25^7',
          text: '6⁻²⁹ × 6²⁰ = ',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '6^-9',
          explanation: '''
The expression 6⁻²⁹ × 6²⁰ is equal to 6⁻⁹. Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 6^(−29) + 20 or 6⁻⁹.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 83,
          title: 'Write your answer like this: 25^7',
          text: '64⁻²⁹ × 64¹⁹ = ',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '64^-10',
          explanation: '''
The expression 64⁻²⁹ × 64¹⁹ is equal to 64⁻¹⁰. Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 64^(−29) + 19 or 64⁻¹⁰.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 84,
          title: 'Write your answer like this: 25^7',
          text: '68⁻²⁹ × 68¹¹ = ',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '68^-18',
          explanation: '''
The expression 68⁻²⁹ × 68¹¹ is equal to 68⁻¹⁸. Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 68^(−29) + 11 or 68⁻¹⁸.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 85,
          title: 'Write your answer like this: 25^7',
          text: '9⁻⁷⁷ × 9¹¹ = ',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '9^-66',
          explanation: '''
The expression 9⁻⁷⁷ × 9¹¹ is equal to 9⁻⁶⁶. Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 9^(−77) + 11 or 9⁻⁶⁶.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 86,
          title: 'Write your answer like this: 25^7',
          text: '26⁻⁷⁸ × 26¹⁸ = ',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '26^-60',
          explanation: '''
The expression 26⁻⁷⁸ × 26¹⁸ is equal to 26⁻⁶⁰. Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 26^(−78) + 18 or 26⁻⁶⁰.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 87,
          title: 'Write your answer like this: 25^7',
          text: '86⁻⁷⁷ × 86⁻⁷⁴ = ',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '86^-151',
          explanation: '''
The expression 86⁻⁷⁷ × 86⁻⁷⁴ is equal to 86⁻¹⁵¹. Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 86^(−77) + (−74) or 86⁻¹⁵¹.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 88,
          title: 'Write your answer like this: 25^7',
          text: '100⁻⁴⁹ × 100⁻¹ = ',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '100^-50',
          explanation: '''
The expression 100⁻⁴⁹ × 100⁻¹ is equal to 100⁻⁵⁰. Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 100^(−49) + (−1) or 100⁻⁵⁰.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 89,
          title: 'Write your answer like this: 25^7',
          text: '52⁻⁵⁶ × 52⁻⁵⁶ = ',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '52^-112',
          explanation: '''
The expression 52⁻⁵⁶ × 52⁻⁵⁶ is equal to 52⁻¹¹². Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 52^(−56) + (−56) or 52⁻¹¹².''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 90,
          title: 'Write your answer like this: 25^7',
          text: '94⁻⁷⁵ × 94⁻⁸⁹ = ',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '94^-164',
          explanation: '''
The expression 94⁻⁷⁵ × 94⁻⁸⁹ is equal to 94⁻¹⁶⁴. Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 94^(−75) + (−89) or 94⁻¹⁶⁴.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 91,
          title: 'Write your answer like this: 25^7',
          text: '81⁻⁴⁷ × 81⁻⁴⁰ = ',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '81^-87',
          explanation: '''
The expression 81⁻⁴⁷ × 81⁻⁴⁰ is equal to 81⁻⁸⁷. Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 81^(−47) + (−40) or 81⁻⁸⁷.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 92,
          title: 'Write your answer like this: 25^7',
          text: '59⁻⁴¹ × 59⁻¹¹ = ',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '59^-52',
          explanation: '''
The expression 59⁻⁴ⁱ × 59⁻¹¹ is equal to 59⁻⁵². Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 59^(−41) + (−11) or 59⁻⁵².''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 93,
          title: 'Write your answer like this: 25^7',
          text: '79⁻⁸¹ × 79⁻⁸⁷ = ',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '79^-168',
          explanation: '''
The expression 79⁻⁸¹ × 79⁻⁸⁷ is equal to 79⁻¹⁶⁸. Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 79^(−81) + (−87) or 79⁻¹⁶⁸.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 94,
          title: 'Write your answer like this: 25^7',
          text: '43⁻⁸ × 43¹⁵ = ',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '43^7',
          explanation: '''
The expression 43⁻⁸ × 43¹⁵ is equal to 43⁷. Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 43^(−8) + 15 or 43⁷.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 95,
          title: 'Write your answer like this: 25^7',
          text: '39⁻⁴ × 39⁻¹⁸ = ',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '39^-22',
          explanation: '''
The expression 39⁻⁴ × 39⁻¹⁸ is equal to 39⁻²². Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 39^(−4) + (−18) or 39⁻²².''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 96,
          title: 'Write your answer like this: 25^7',
          text: '58⁻⁶⁷ × 58⁻⁴⁰ = ',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '58^-107',
          explanation: '''
The expression 58⁻⁶⁷ × 58⁻⁴⁰ is equal to 58⁻¹⁰⁷. Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 58^(−67) + (−40) or 58⁻¹⁰⁷.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 97,
          title: 'Write your answer like this: 25^7',
          text: '35⁸¹ × 35⁻¹¹ = ',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '35^70',
          explanation: '''
The expression 35⁸¹ × 35⁻¹¹ is equal to 35⁷⁰. Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 35^(81 - 11) or 35⁷⁰.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 98,
          title: 'Write your answer like this: 25^7',
          text: '51⁻¹⁷ × 51⁻²¹ = ',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '51^-38',
          explanation: '''
The expression 51⁻¹⁷ × 51⁻²¹ is equal to 51⁻³⁸. Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 51^(−17) + (−21) or 51⁻³⁸.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
      Question(
          id: 99,
          title: 'Write your answer like this: 25^7',
          text: '91⁻¹¹ × 91⁻⁶⁹ = ',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '91^-80',
          explanation: '''
The expression 91⁻¹¹ × 91⁻⁶⁹ is equal to 91⁻⁸⁰. Because when you multiply two powers
with the same base, you can add their exponents.
So, it simplifies to 91^(−11) + (−69) or 91⁻⁸⁰.''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power operations',
          keyboardType: 'digit'),
    ],
    'Power evaluations': [
      Question(
          id: 0,
          title: 'Evaluate the expressions:',
          text: '''4⁴ = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '256',
          explanation: '''4^4 = 4 * 4 * 4 * 4 = 256''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power evaluations',
          keyboardType: 'digit'),
      Question(
          id: 1,
          title: 'Evaluate the expressions:',
          text: '''0.2³ = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '0.008',
          explanation:
              '''0.2³ = 8 * 10^-3 or 0.008, converting 8 * 10^-3 to decimal form gives 0.008''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power evaluations',
          keyboardType: 'digit'),
      Question(
          id: 2,
          title: 'Evaluate the expressions:',
          text: '''9³ = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '729',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power evaluations',
          keyboardType: 'digit'),
      Question(
          id: 3,
          title: 'Evaluate the expressions:',
          text: '''-7² = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '-49',
          explanation: '''-7^2 = -49, because -7^2 means -1 * 7^2''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power evaluations',
          keyboardType: 'digit'),
      Question(
          id: 4,
          title: 'Evaluate the expressions:',
          text: '''8² = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '64',
          explanation: '''8^2 = 64, because 8 * 8 = 64''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power evaluations',
          keyboardType: 'digit'),
      Question(
          id: 5,
          title: 'Evaluate the expressions:',
          text: '''-2² = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '-4',
          explanation: '''-2^2 = -4, because -2^2 means -1 * 2^2''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power evaluations',
          keyboardType: 'digit'),
      Question(
          id: 6,
          title: 'Evaluate the expressions:',
          text: '''-3⁴ = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '-81',
          explanation: '''-3^4 = -81, because -3^4 means -1 * 3^4''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Power evaluations',
          keyboardType: 'digit'),
    ],
    'Exponent powers': [
      Question(
          id: 0,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''1⁰ = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '1-base, 0-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 1,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''2¹ = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '2-base, 1-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 2,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''3¹ = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '3-base, 1-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 3,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''4¹ = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '4-base, 1-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 4,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''5¹ = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '5-base, 1-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 5,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''3⁴ = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '3-base, 4-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 6,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''4⁴ = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '4-base, 4-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 7,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''5⁶ = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '5-base, 6-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 8,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''6⁸ = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '6-base, 8-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 9,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''8² = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '8-base, 2-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 10,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''9³ = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '9-base, 3-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 11,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''3⁴ = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '3-base, 4-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 12,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''5⁷ = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '5-base, 7-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 13,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''-0.07⁸ = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '0.07-base, 8-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 14,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''-0.09³ = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '0.09-base, 3-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 15,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''-3.39⁴ = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '3.39-base, 4-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 16,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''-5.52⁵ = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '5.52-base, 5-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 17,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''6.38⁰ = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '6.38-base, 0-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 18,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''7.49² = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '7.49-base, 2-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 19,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''8.64⁸ = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '8.64-base, 8-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 20,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''9.81² = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '9.81-base, 2-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 21,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''101.5⁴ = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '101.5-base, 4-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 22,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''100.99⁹⁹⁹⁹ = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '100.99-base, 9999-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 23,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''(15b)⁴ = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '15b-base, 4-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 24,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''(-3a)⁸ = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '-3a-base, 8-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 25,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''(4c)⁹ = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '4c-base, 9-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 26,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''(5x)¹⁰ = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '5x-base, 10-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 27,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''(52z)¹¹ = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '52z-base, 11-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 28,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''(-99j)⁻⁹⁹ = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '-99j-base, -99-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 29,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''(-121i)¹¹ = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '-121i-base, 11-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 30,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''(-12c)⁶ = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '-12c-base, 6-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 31,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''(-5554k)⁻¹⁰ = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '-5554k-base, -10-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 32,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''(3f)⁹ = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '3f-base, 9-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 33,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''-6⁴ = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '6-base, 4-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 34,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''8⁻³ = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '8-base, -3-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 35,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''10⁻¹¹ = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '10-base, -11-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 36,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''524⁶³ = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '524-base, 63-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 37,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''44⁴² = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '44-base, 42-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 38,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''255²⁵ = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '255-base, 25-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 39,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''63⁷ = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '63-base, 7-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 40,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''49⁷ = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '49-base, 7-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 41,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''100⁻¹⁰⁰ = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '100-base, -100-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 42,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''9999¹¹¹¹ = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '9999-base, 1111-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 43,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''7y³ = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: 'y-base, 3-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 44,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''4m⁶ = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: 'm-base, 6-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 45,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''50z⁵ = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: 'z-base, 5-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 46,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''47y¹³ = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: 'y-base, 13-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 47,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''88u³³ = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: 'u-base, 33-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 48,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''97p⁷ = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: 'p-base, 7-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 49,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''121t¹¹ = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: 't-base, 11-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 50,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''99n³³ = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: 'n-base, 33-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 51,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''564b⁹ = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: 'b-base, 9-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 52,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''49r⁷ = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: 'r-base, 7-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 53,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''(-7y)³ = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '-7y-base, 3-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 54,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''(-4m)⁶ = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '-4m-base, 6-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 55,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''(-50z)⁵ = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '-50z-base, 5-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 56,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''(47y)¹³ = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '47y-base, 13-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 57,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''(88u)³³ = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '88u-base, 33-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 58,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''(-97p)⁷ = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '-97p-base, 7-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 59,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''(121t)¹¹ = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '121t-base, 11-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 60,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''(-99n)³³ = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '-99n-base, 33-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 61,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''(-564b)⁹ = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '-564b-base, 9-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
      Question(
          id: 62,
          title: '''Identify the base and exponent:
Remember:   7⁸    7-base 8-exponent
Answer: 1-base, 0-exponent''',
          text: '''(-49r)⁷ = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '-49r-base, 7-exponent',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Exponent powers',
          keyboardType: 'text'),
    ],
    'Rewrite expression': [
      Question(
          id: 0,
          title: 'Rewrite the expression using exponents:',
          text: '''45 * 45 * 45 = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '45³',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 1,
          title: 'Rewrite the expression using exponents:',
          text:
              '''88 * 88 * 88 * 88 * 88 * 88 * 88 * 88 * 88 * 88 * 88 * 88 * 88 * 88 * 88 * 88 * 88 = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '88¹⁷',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 2,
          title: 'Rewrite the expression using exponents:',
          text: '''125 * 125 = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '125²',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 3,
          title: 'Rewrite the expression using exponents:',
          text: '''1 * 1 * 1 * 1 * 1 = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '1⁵',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 4,
          title: 'Rewrite the expression using exponents:',
          text: '''77 * 77 * 77 * 77 * 77 * 77 * 77 * 77 * 77 * 77 = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '77¹⁰',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 5,
          title: 'Rewrite the expression using exponents:',
          text: '''14 * 14 * 14 * 14 * 14 * 14 * 14 * 14 = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '14⁸',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 6,
          title: 'Rewrite the expression using exponents:',
          text: '''23 * 23 * 23 * 23 * 23 = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '23⁵',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 7,
          title: 'Rewrite the expression using exponents:',
          text: '''9/-5 * 9/-5 * 9/-5 = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '9³/(-5)³',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 8,
          title: 'Rewrite the expression using exponents:',
          text: '''10/-9 * 10/-9 * 10/-9 * 10/-9 * 10/-9 = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '10⁵(-9)⁵',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 9,
          title: 'Rewrite the expression using exponents:',
          text: '''2 * 4 * 8 * 16 * 32 * 64 * 128 = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '2²⁸',
          explanation:
              '''2 = 2¹, 4 = 2², 8 = 2³, 16 = 2⁴, 32 = 2⁵, 64 = 2⁶, 128 = 2⁷, sum of exponents: 1+2+3+4+5+6+7 = 28''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 10,
          title: 'Rewrite the expression using exponents:',
          text: '''9 * 27 * 81 = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '3⁹',
          explanation:
              '''9 = 3², 27 = 3³, 81 = 3⁴, sum of exponents: 2+3+4 = 9''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 11,
          title: 'Rewrite the expression using exponents:',
          text: '''5 * 25 * 125 = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '5⁶',
          explanation:
              '''5 = 5¹, 25 = 5², 125 = 5³, sum of exponents: 1+2+3 = 6''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 12,
          title: 'Rewrite the expression using exponents:',
          text: '''8 * 8 * 8 = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '2⁹',
          explanation: '''8 = 2³, three times: 2³ * 2³ * 2³ = 2⁹''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 13,
          title: 'Rewrite the expression using exponents:',
          text: '''4 * 4 * 4 * 4 = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '2⁸',
          explanation: '''4 = 2², four times: 2² * 2² * 2² * 2² = 2⁸''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 14,
          title: 'Rewrite the expression using exponents:',
          text: '''35 * 35 * 35 = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '7³ * 5³',
          explanation: '''35 = 7 * 5, three times: (7 * 5)³ = 7³ * 5³''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 15,
          title: 'Rewrite the expression using exponents:',
          text: '''15 * 15 * 15 * 15 = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '5⁴ * 3⁴',
          explanation: '''15 = 5 * 3, four times: (5 * 3)⁴ = 5⁴ * 3⁴''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 16,
          title: 'Rewrite the expression using exponents:',
          text: '''39 * 39 * 39 = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '13³ * 3³',
          explanation: '''39 = 13 * 3, three times: (13 * 3)³ = 13³ * 3³''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 17,
          title: 'Rewrite the expression using exponents:',
          text: '''8³ * 4³ * 2³ * 16³ * 32³ = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '2¹⁵',
          explanation:
              '''8 = 2³, 4 = 2², 2 = 2¹, 16 = 2⁴, 32 = 2⁵, sum of exponents: 3+2+1+4+5 = 15''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 18,
          title: 'Rewrite the expression using exponents:',
          text: '''44³ * 44³ * 88³ * 22³ * 11³ = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '2¹⁵ * 11⁵',
          explanation:
              '''44 = 2² * 11, 88 = 2³ * 11, 22 = 2 * 11, 11 = 11, sum of exponents: 2+2+3+1+1 = 15 for 2, sum of exponents: 1+1+1+1+1 = 5 for 11''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 19,
          title: 'Rewrite the expression using exponents:',
          text: '''13² * 13² * 13² * 13² = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '13⁴ * 2⁴',
          explanation:
              '''13 = 11 * 2, sum of exponents: 1+1+1+1 for 11, sum of exponents: 1+1+1+1 for 2''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 20,
          title: 'Rewrite the expression using exponents:',
          text: '''9 * 81 * 27 = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '3⁹',
          explanation:
              '''9 = 3², 81 = 3⁴, 27 = 3³, sum of exponents: 2+4+3 = 9''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 21,
          title: 'Rewrite the expression using exponents:',
          text: '''a * a * a * a * b * b * b = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: 'a⁴ * b³',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 22,
          title: 'Rewrite the expression using exponents:',
          text: '''s * s * s * s * s * v * v = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: 's⁵ * v²',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 23,
          title: 'Rewrite the expression using exponents:',
          text: '''u * u * u * u * u * u * n * n * n * u = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: 'u⁷ * n³',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 24,
          title: 'Rewrite the expression using exponents:',
          text: '''a * a * b * a * a * b * a = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: 'a⁷ * b³',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 25,
          title: 'Rewrite the expression using exponents:',
          text: '''-7 * a * b * r * a * c * a * d * a * b * r * a = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '-7 * a⁵ * b² * r² * c * d',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 26,
          title: 'Rewrite the expression using exponents:',
          text: '''13 * b * u * b * b * l * e = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '13*b³*u*l*e',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 27,
          title: 'Rewrite the expression using exponents:',
          text: '''a * a * a * b * b * b * a * b * a * 64 = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: 'a⁵*b⁴*64',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 28,
          title: 'Rewrite the expression using exponents:',
          text: '''k * a * z * a * k * h = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: 'k² * a² * z * h',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 29,
          title: 'Rewrite the expression using exponents:',
          text: '''b * o * o * k = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: 'b * o² * k',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 30,
          title: 'Rewrite the expression using exponents:',
          text: '''s * d * s * d * s * d * s * d * s * d = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: 's⁵ * d⁵',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 31,
          title: 'Rewrite the expression using exponents:',
          text: '''-125 = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '-5³',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 32,
          title: 'Rewrite the expression using exponents:',
          text: '''-53 = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '-1 * 5³',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 33,
          title: 'Rewrite the expression using exponents:',
          text: '''64 = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '8²',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 34,
          title: 'Rewrite the expression using exponents:',
          text: '''-121 = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '-11²',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 35,
          title: 'Rewrite the expression using exponents:',
          text: '''-255 = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '-1*255',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 36,
          title: 'Rewrite the expression using exponents:',
          text: '''36 = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '3²*2²',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 37,
          title: 'Rewrite the expression using exponents:',
          text: '''45 = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '5*3²',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 38,
          title: 'Rewrite the expression using exponents:',
          text: '''-84⁵⁵⁵⁵ = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '-1*84⁵⁵⁵⁵',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 39,
          title: 'Rewrite the expression using exponents:',
          text: '''0.027 = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '0.3³',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
      Question(
          id: 40,
          title: 'Rewrite the expression using exponents:',
          text: '''0.0081 = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '0.3⁴',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Powers',
          testId: 'Rewrite expression',
          keyboardType: 'digit'),
    ],
  },
  'Roots': {
    'Square roots': [
      Question(
          id: 0,
          title: '''If a² = b then a is the square root of b (b ≥ 0, a
≥ 0).We use the symbol √⬚, called radical,to denote the square root of a number. So if a² = b then a = √b (b ≥ 0, a ≥ 0)
A perfect square is the result when a whole number is multiplied by itself.The square root of a perfect square is always a whole number. (2² = 4 or 2 = √4)
Solve:''',
          text: '''√9''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '3',
          explanation: '''√9 is the perfect square of 3
√9 = 3''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Square roots',
          keyboardType: 'digit'),
      Question(
          id: 1,
          title: '''If a² = b then a is the square root of b (b ≥ 0, a
≥ 0).We use the symbol √⬚, called radical,to denote the square root of a number. So if a² = b then a = √b (b ≥ 0, a ≥ 0)
A perfect square is the result when a whole number is multiplied by itself.The square root of a perfect square is always a whole number. (2² = 4 or 2 = √4)
Solve:''',
          text: '''√25''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '5',
          explanation: '''√25 is the perfect square of 5
√25 = 5''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Square roots',
          keyboardType: 'digit'),
      Question(
          id: 2,
          title: '''If a² = b then a is the square root of b (b ≥ 0, a
≥ 0).We use the symbol √⬚, called radical,to denote the square root of a number. So if a² = b then a = √b (b ≥ 0, a ≥ 0)
A perfect square is the result when a whole number is multiplied by itself.The square root of a perfect square is always a whole number. (2² = 4 or 2 = √4)
Solve:''',
          text: '''√36''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '6',
          explanation: '''√36 is the perfect square of 6
√36 = 6''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Square roots',
          keyboardType: 'digit'),
      Question(
          id: 3,
          title: '''If a² = b then a is the square root of b (b ≥ 0, a
≥ 0).We use the symbol √⬚, called radical,to denote the square root of a number. So if a² = b then a = √b (b ≥ 0, a ≥ 0)
A perfect square is the result when a whole number is multiplied by itself.The square root of a perfect square is always a whole number. (2² = 4 or 2 = √4)
Solve:''',
          text: '''√16''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '4',
          explanation: '''√16 is the perfect square of 4
√16 = 4''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Square roots',
          keyboardType: 'digit'),
      Question(
          id: 4,
          title: '''If a² = b then a is the square root of b (b ≥ 0, a
≥ 0).We use the symbol √⬚, called radical,to denote the square root of a number. So if a² = b then a = √b (b ≥ 0, a ≥ 0)
A perfect square is the result when a whole number is multiplied by itself.The square root of a perfect square is always a whole number. (2² = 4 or 2 = √4)
Solve:''',
          text: '''√64''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '8',
          explanation: '''√64 is the perfect square of 8
√64 = 8''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Square roots',
          keyboardType: 'digit'),
      Question(
          id: 5,
          title: '''If a² = b then a is the square root of b (b ≥ 0, a
≥ 0).We use the symbol √⬚, called radical,to denote the square root of a number. So if a² = b then a = √b (b ≥ 0, a ≥ 0)
A perfect square is the result when a whole number is multiplied by itself.The square root of a perfect square is always a whole number. (2² = 4 or 2 = √4)
Solve:''',
          text: '''√169''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '13',
          explanation: '''√169 is the perfect square of 13
√169 = 13''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Square roots',
          keyboardType: 'digit'),
      Question(
          id: 6,
          title: '''If a² = b then a is the square root of b (b ≥ 0, a
≥ 0).We use the symbol √⬚, called radical,to denote the square root of a number. So if a² = b then a = √b (b ≥ 0, a ≥ 0)
A perfect square is the result when a whole number is multiplied by itself.The square root of a perfect square is always a whole number. (2² = 4 or 2 = √4)
Solve:''',
          text: '''√225''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '15',
          explanation: '''√225 is the perfect square of 15
√225 = 15''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Square roots',
          keyboardType: 'digit'),
      Question(
          id: 7,
          title: '''If a² = b then a is the square root of b (b ≥ 0, a
≥ 0).We use the symbol √⬚, called radical,to denote the square root of a number. So if a² = b then a = √b (b ≥ 0, a ≥ 0)
A perfect square is the result when a whole number is multiplied by itself.The square root of a perfect square is always a whole number. (2² = 4 or 2 = √4)
Solve:''',
          text: '''√0.0121''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '0.11',
          explanation: '''√0.0121 is the perfect square of 0.11
√0.0121 = 0.11''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Square roots',
          keyboardType: 'digit'),
      Question(
          id: 8,
          title: '''If a² = b then a is the square root of b (b ≥ 0, a
≥ 0).We use the symbol √⬚, called radical,to denote the square root of a number. So if a² = b then a = √b (b ≥ 0, a ≥ 0)
A perfect square is the result when a whole number is multiplied by itself.The square root of a perfect square is always a whole number. (2² = 4 or 2 = √4)
Solve:''',
          text: '''√0.0289''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '0.17',
          explanation: '''√0.0289 is the perfect square of 0.17
√0.0289 = 0.17''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Square roots',
          keyboardType: 'digit'),
      Question(
          id: 9,
          title: '''If a² = b then a is the square root of b (b ≥ 0, a
≥ 0).We use the symbol √⬚, called radical,to denote the square root of a number. So if a² = b then a = √b (b ≥ 0, a ≥ 0)
A perfect square is the result when a whole number is multiplied by itself.The square root of a perfect square is always a whole number. (2² = 4 or 2 = √4)
Solve:''',
          text: '''√0.0144''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '0.12',
          explanation: '''√0.0144 is the perfect square of 0.12
√0.0144 = 0.12''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Square roots',
          keyboardType: 'digit'),
      Question(
          id: 10,
          title: '''If a² = b then a is the square root of b (b ≥ 0, a
≥ 0).We use the symbol √⬚, called radical,to denote the square root of a number. So if a² = b then a = √b (b ≥ 0, a ≥ 0)
A perfect square is the result when a whole number is multiplied by itself.The square root of a perfect square is always a whole number. (2² = 4 or 2 = √4)
Solve:''',
          text: '''−√81''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '−9',
          explanation: '''Step 1: Figure out which number squared equals 81.
√81 = 9
Step 2: Include the negative sign to get the negative square root.
−√81 = −9''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Square roots',
          keyboardType: 'digit'),
      Question(
          id: 11,
          title: '''If a² = b then a is the square root of b (b ≥ 0, a
≥ 0).We use the symbol √⬚, called radical,to denote the square root of a number. So if a² = b then a = √b (b ≥ 0, a ≥ 0)
A perfect square is the result when a whole number is multiplied by itself.The square root of a perfect square is always a whole number. (2² = 4 or 2 = √4)
Solve:''',
          text: '''−√49''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '−7',
          explanation: '''Step 1: Figure out which number squared equals 49.
√49 = 7
Step 2: Include the negative sign to get the negative square root.
−√49 = −7''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Square roots',
          keyboardType: 'digit'),
      Question(
          id: 12,
          title: '''If a² = b then a is the square root of b (b ≥ 0, a
≥ 0).We use the symbol √⬚, called radical,to denote the square root of a number. So if a² = b then a = √b (b ≥ 0, a ≥ 0)
A perfect square is the result when a whole number is multiplied by itself.The square root of a perfect square is always a whole number. (2² = 4 or 2 = √4)
Solve:''',
          text: '''−√196''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '−14',
          explanation: '''Step 1: Figure out which number squared equals 196.
√196 = 14
Step 2: Include the negative sign to get the negative square root.
−√196 = −14''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Square roots',
          keyboardType: 'digit'),
      Question(
          id: 13,
          title: '''If a² = b then a is the square root of b (b ≥ 0, a
≥ 0).We use the symbol √⬚, called radical,to denote the square root of a number. So if a² = b then a = √b (b ≥ 0, a ≥ 0)
A perfect square is the result when a whole number is multiplied by itself.The square root of a perfect square is always a whole number. (2² = 4 or 2 = √4)
Solve:''',
          text: '''√−20''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: 'undefined',
          explanation:
              '''Any number squared will produce a positive number, so there is no true square root of a negative root.
√−20 is undefined''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Square roots',
          keyboardType: 'digit'),
      Question(
          id: 14,
          title: '''If a² = b then a is the square root of b (b ≥ 0, a
≥ 0).We use the symbol √⬚, called radical,to denote the square root of a number. So if a² = b then a = √b (b ≥ 0, a ≥ 0)
A perfect square is the result when a whole number is multiplied by itself.The square root of a perfect square is always a whole number. (2² = 4 or 2 = √4)
Solve:''',
          text: '''√−55''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: 'undefined',
          explanation:
              '''Any number squared will produce a positive number, so there is no true square root of a negative root.
√−55 is undefined''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Square roots',
          keyboardType: 'digit'),
      Question(
          id: 15,
          title: '''If a² = b then a is the square root of b (b ≥ 0, a
≥ 0).We use the symbol √⬚, called radical,to denote the square root of a number. So if a² = b then a = √b (b ≥ 0, a ≥ 0)
A perfect square is the result when a whole number is multiplied by itself.The square root of a perfect square is always a whole number. (2² = 4 or 2 = √4)
Solve:''',
          text: '''√−13''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: 'undefined',
          explanation:
              '''Any number squared will produce a positive number, so there is no true square root of a negative root.
√−13 is undefined''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Square roots',
          keyboardType: 'digit'),
      Question(
          id: 16,
          title: '''If a² = b then a is the square root of b (b ≥ 0, a
≥ 0).We use the symbol √⬚, called radical,to denote the square root of a number. So if a² = b then a = √b (b ≥ 0, a ≥ 0)
A perfect square is the result when a whole number is multiplied by itself.The square root of a perfect square is always a whole number. (2² = 4 or 2 = √4)
Solve:''',
          text: '''√(20²)''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '20',
          explanation: '''If x is a non-negative real number, then √x² = x.
Simplify the square root and the square.
√20² = 20''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Square roots',
          keyboardType: 'digit'),
      Question(
          id: 17,
          title: '''If a² = b then a is the square root of b (b ≥ 0, a
≥ 0).We use the symbol √⬚, called radical,to denote the square root of a number. So if a² = b then a = √b (b ≥ 0, a ≥ 0)
A perfect square is the result when a whole number is multiplied by itself.The square root of a perfect square is always a whole number. (2² = 4 or 2 = √4)
Solve:''',
          text: '''√(16²)''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '16',
          explanation: '''If x is a non-negative real number, then √x² = x.
Simplify the square root and the square.
√16² = 16''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Square roots',
          keyboardType: 'digit'),
      Question(
          id: 18,
          title: '''If a² = b then a is the square root of b (b ≥ 0, a
≥ 0).We use the symbol √⬚, called radical,to denote the square root of a number. So if a² = b then a = √b (b ≥ 0, a ≥ 0)
A perfect square is the result when a whole number is multiplied by itself.The square root of a perfect square is always a whole number. (2² = 4 or 2 = √4)
Solve:''',
          text: '''√(−30)²''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '30',
          explanation: '''Calculate (−30)²
√(−30²) = √900
Identify which number is the square of 900
√900 = √(30²)
Simplify the square root and the square
√(30²) = 30''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Square roots',
          keyboardType: 'digit'),
      Question(
          id: 19,
          title: '''If a² = b then a is the square root of b (b ≥ 0, a
≥ 0).We use the symbol √⬚, called radical,to denote the square root of a number. So if a² = b then a = √b (b ≥ 0, a ≥ 0)
A perfect square is the result when a whole number is multiplied by itself.The square root of a perfect square is always a whole number. (2² = 4 or 2 = √4)
Solve:''',
          text: '''√2500''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '50',
          explanation: '''Identify which number is the square of 2500
√2500 = √(50²)
Simplify the square root and the square
√(50²) = 50''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Square roots',
          keyboardType: 'digit'),
    ],
    'Property #1 of square root': [
      Question(
          id: 0,
          title: '''Remember:
For any real numbers a and b, where a ≥ 0, and b ≥ 0,

√(a ∗ b) = √a ∗ √b or √a ∗ √b = √(a ∗ b)

Solve:''',
          text: '''√2 ∗ √18''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '6',
          explanation:
              '''For any real numbers a and b, where a ≥ 0, and b ≥ 0, √a ∗ b = √a ∗ √b or √a ∗ √b = √a ∗ b. Multiply two numbers under the same root: √2 ∗ √18 = √2 ∗ 18 = √36. Evaluate square root: √36 = 6''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #1 of square root',
          keyboardType: 'digit'),
      Question(
          id: 1,
          title: '''Remember:
For any real numbers a and b, where a ≥ 0, and b ≥ 0,

√(a ∗ b) = √a ∗ √b or √a ∗ √b = √(a ∗ b)

Solve:''',
          text: '''√16 ∗ √1''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '4',
          explanation:
              '''For any real numbers a and b, where a ≥ 0, and b ≥ 0, √a ∗ b = √a ∗ √b or √a ∗ √b = √a ∗ b. Multiply two numbers under the same root: √16 ∗ √1 = √16 ∗ 1 = √16. Evaluate square root: √16 = 4''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #1 of square root',
          keyboardType: 'digit'),
      Question(
          id: 2,
          title: '''Remember:
For any real numbers a and b, where a ≥ 0, and b ≥ 0,

√(a ∗ b) = √a ∗ √b or √a ∗ √b = √(a ∗ b)

Solve:''',
          text: '''√4 ∗ √9''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '6',
          explanation:
              '''For any real numbers a and b, where a ≥ 0, and b ≥ 0, √a ∗ b = √a ∗ √b or √a ∗ √b = √a ∗ b. Multiply two numbers under the same root: √4 ∗ √9 = √4 ∗ 9 = √36. Evaluate square root: √36 = 6''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #1 of square root',
          keyboardType: 'digit'),
      Question(
          id: 3,
          title: '''Remember:
For any real numbers a and b, where a ≥ 0, and b ≥ 0,

√(a ∗ b) = √a ∗ √b or √a ∗ √b = √(a ∗ b)

Solve:''',
          text: '''√32 ∗ √2''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '8',
          explanation:
              '''For any real numbers a and b, where a ≥ 0, and b ≥ 0, √a ∗ b = √a ∗ √b or √a ∗ √b = √a ∗ b. Multiply two numbers under the same root: √32 ∗ √2 = √32 ∗ 2 = √64. Evaluate square root: √64 = 8''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #1 of square root',
          keyboardType: 'digit'),
      Question(
          id: 4,
          title: '''Remember:
For any real numbers a and b, where a ≥ 0, and b ≥ 0,

√(a ∗ b) = √a ∗ √b or √a ∗ √b = √(a ∗ b)

Solve:''',
          text: '''√25 ∗ √4''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '10',
          explanation:
              '''For any real numbers a and b, where a ≥ 0, and b ≥ 0, √a ∗ b = √a ∗ √b or √a ∗ √b = √a ∗ b. Multiply two numbers under the same root: √25 ∗ √4 = √25 ∗ 4 = √100. Evaluate square root: √100 = 10''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #1 of square root',
          keyboardType: 'digit'),
      Question(
          id: 5,
          title: '''Remember:
For any real numbers a and b, where a ≥ 0, and b ≥ 0,

√(a ∗ b) = √a ∗ √b or √a ∗ √b = √(a ∗ b)

Solve:''',
          text: '''√9 ∗ √36''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '18',
          explanation:
              '''For any real numbers a and b, where a ≥ 0, and b ≥ 0, √a ∗ b = √a ∗ √b or √a ∗ √b = √a ∗ b. In this situation, it is easier to evaluate each root separately than to multiply them: √9 ∗ √36 = 3 ∗ 6. Multiply two numbers: 3 ∗ 6 = 18''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #1 of square root',
          keyboardType: 'digit'),
      Question(
          id: 6,
          title: '''Remember:
For any real numbers a and b, where a ≥ 0, and b ≥ 0,

√(a ∗ b) = √a ∗ √b or √a ∗ √b = √(a ∗ b)

Solve:''',
          text: '''√4 ∗ √49''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '14',
          explanation:
              '''For any real numbers a and b, where a ≥ 0, and b ≥ 0, √a ∗ b = √a ∗ √b or √a ∗ √b = √a ∗ b. In this situation, it is easier to evaluate each root separately than to multiply them: √4 ∗ √49 = 2 ∗ 7. Multiply two numbers: 2 ∗ 7 = 14''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #1 of square root',
          keyboardType: 'digit'),
      Question(
          id: 7,
          title: '''Remember:
For any real numbers a and b, where a ≥ 0, and b ≥ 0,

√(a ∗ b) = √a ∗ √b or √a ∗ √b = √(a ∗ b)

Solve:''',
          text: '''√64 ∗ √4''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '16',
          explanation:
              '''For any real numbers a and b, where a ≥ 0, and b ≥ 0, √a ∗ b = √a ∗ √b or √a ∗ √b = √a ∗ b. In this situation, it is easier to evaluate each root separately than to multiply them: √64 ∗ √4 = 8 ∗ 2. Multiply two numbers: 8 ∗ 2 = 16''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #1 of square root',
          keyboardType: 'digit'),
      Question(
          id: 8,
          title: '''Remember:
For any real numbers a and b, where a ≥ 0, and b ≥ 0,

√(a ∗ b) = √a ∗ √b or √a ∗ √b = √(a ∗ b)

Solve:''',
          text: '''√25 ∗ √49''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '35',
          explanation:
              '''For any real numbers a and b, where a ≥ 0, and b ≥ 0, √a ∗ b = √a ∗ √b or √a ∗ √b = √a ∗ b. In this situation, it is easier to evaluate each root separately than to multiply them: √25 ∗ √49 = 5 ∗ 7. Multiply two numbers: 5 ∗ 7 = 35''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #1 of square root',
          keyboardType: 'digit'),
      Question(
          id: 9,
          title: '''Remember:
For any real numbers a and b, where a ≥ 0, and b ≥ 0,

√(a ∗ b) = √a ∗ √b or √a ∗ √b = √(a ∗ b)

Solve:''',
          text: '''√16 ∗ √64''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '32',
          explanation:
              '''For any real numbers a and b, where a ≥ 0, and b ≥ 0, √a ∗ b = √a ∗ √b or √a ∗ √b = √a ∗ b. In this situation, it is easier to evaluate each root separately than to multiply them: √16 ∗ √64 = 4 ∗ 8. Multiply two numbers: 4 ∗ 8 = 32''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #1 of square root',
          keyboardType: 'digit'),
      Question(
          id: 10,
          title: '''Remember:
For any real numbers a and b, where a ≥ 0, and b ≥ 0,

√(a ∗ b) = √a ∗ √b or √a ∗ √b = √(a ∗ b)

Solve:''',
          text: '''√24 ∗ √6''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '12',
          explanation:
              '''For any real numbers a and b, where a ≥ 0, and b ≥ 0, √a ∗ b = √a ∗ √b or √a ∗ √b = √a ∗ b. Multiply two numbers under the same root: √24 ∗ √6 = √24 ∗ 6 = √144. Evaluate square root: √144 = 12''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #1 of square root',
          keyboardType: 'digit'),
      Question(
          id: 11,
          title: '''Remember:
For any real numbers a and b, where a ≥ 0, and b ≥ 0,

√(a ∗ b) = √a ∗ √b or √a ∗ √b = √(a ∗ b)

Solve:''',
          text: '''√50 ∗ √2''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '10',
          explanation:
              '''For any real numbers a and b, where a ≥ 0, and b ≥ 0, √a ∗ b = √a ∗ √b or √a ∗ √b = √a ∗ b. Multiply two numbers under the same root: √50 ∗ √2 = √50 ∗ 2 = √100. Evaluate square root: √100 = 10''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #1 of square root',
          keyboardType: 'digit'),
      Question(
          id: 12,
          title: '''Remember:
For any real numbers a and b, where a ≥ 0, and b ≥ 0,

√(a ∗ b) = √a ∗ √b or √a ∗ √b = √(a ∗ b)

Solve:''',
          text: '''√11 ∗ √11''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '11',
          explanation:
              '''For any real numbers a and b, where a ≥ 0, and b ≥ 0, √a ∗ b = √a ∗ √b or √a ∗ √b = √a ∗ b. Multiply two numbers under the same root: √11 ∗ √11 = √11 ∗ 11 = √121. Evaluate square root: √121 = 11''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #1 of square root',
          keyboardType: 'digit'),
      Question(
          id: 13,
          title: '''Remember:
For any real numbers a and b, where a ≥ 0, and b ≥ 0,

√(a ∗ b) = √a ∗ √b or √a ∗ √b = √(a ∗ b)

Solve:''',
          text: '''√16900''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '130',
          explanation:
              '''For any real numbers a and b, where a ≥ 0, and b ≥ 0, √a ∗ b = √a ∗ √b or √a ∗ √b = √a ∗ b. In order to evaluate easily we need to divide it into 2 numbers, which are perfect squares: √16900 = √169 ∗ 100 = √169 ∗ √100. Evaluate each square root: √169 ∗ √100 = 13 ∗ 10. Multiply them: 13 ∗ 10 = 130''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #1 of square root',
          keyboardType: 'digit'),
      Question(
          id: 14,
          title: '''Remember:
For any real numbers a and b, where a ≥ 0, and b ≥ 0,

√(a ∗ b) = √a ∗ √b or √a ∗ √b = √(a ∗ b)

Solve:''',
          text: '''√28900''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '170',
          explanation:
              '''For any real numbers a and b, where a ≥ 0, and b ≥ 0, √a ∗ b = √a ∗ √b or √a ∗ √b = √a ∗ b. In order to evaluate easily we need to divide it into 2 numbers, which are perfect squares: √28900 = √289 ∗ 100 = √289 ∗ √100. Evaluate each square root: √289 ∗ √100 = 17 ∗ 10. Multiply them: 17 ∗ 10 = 170''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #1 of square root',
          keyboardType: 'digit'),
      Question(
          id: 15,
          title: '''Remember:
For any real numbers a and b, where a ≥ 0, and b ≥ 0,

√(a ∗ b) = √a ∗ √b or √a ∗ √b = √(a ∗ b)

Solve:''',
          text: '''√22500''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '150',
          explanation:
              '''For any real numbers a and b, where a ≥ 0, and b ≥ 0, √a ∗ b = √a ∗ √b or √a ∗ √b = √a ∗ b. In order to evaluate easily we need to divide it into 2 numbers, which are perfect squares: √22500 = √225 ∗ 100 = √225 ∗ √100. Evaluate square root: √225 ∗ √100 = 15 ∗ 10. Multiply them: 15 ∗ 10 = 150''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #1 of square root',
          keyboardType: 'digit'),
      Question(
          id: 16,
          title: '''Remember:
For any real numbers a and b, where a ≥ 0, and b ≥ 0,

√(a ∗ b) = √a ∗ √b or √a ∗ √b = √(a ∗ b)

Solve:''',
          text: '''√18 ∗ √9''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '9√2',
          explanation:
              '''For any real numbers a and b, where a ≥ 0, and b ≥ 0, √a ∗ b = √a ∗ √b or √a ∗ √b = √a ∗ b. Multiply two numbers under the same root: √18 ∗ √9 = √18 ∗ 9 = √162. Since 162 is not a perfect square we need to divide it into two numbers, where one of them must be a perfect square: √162 = √81 ∗ 2 = √81 ∗ √2. Evaluate each square root and multiply them: √81 ∗ √2 = 9 ∗ √2 = 9√2''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #1 of square root',
          keyboardType: 'digit'),
      Question(
          id: 17,
          title: '''Remember:
For any real numbers a and b, where a ≥ 0, and b ≥ 0,

√(a ∗ b) = √a ∗ √b or √a ∗ √b = √(a ∗ b)

Solve:''',
          text: '''√12 ∗ √6''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '6√2',
          explanation:
              '''For any real numbers a and b, where a ≥ 0, and b ≥ 0, √a ∗ b = √a ∗ √b or √a ∗ √b = √a ∗ b. Multiply two numbers under the same root: √12 ∗ √6 = √12 ∗ 6 = √72. Since 72 is not a perfect square we need to divide it into two numbers, where one of them must be a perfect square: √72 = √36 ∗ 2 = √36 ∗ √2. Evaluate each square root and multiply them: √36 ∗ √2 = 6 ∗ √2 = 6√2''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #1 of square root',
          keyboardType: 'digit'),
      Question(
          id: 18,
          title: '''Remember:
For any real numbers a and b, where a ≥ 0, and b ≥ 0,

√(a ∗ b) = √a ∗ √b or √a ∗ √b = √(a ∗ b)

Solve:''',
          text: '''√15 ∗ √3''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '3√5',
          explanation:
              '''For any real numbers a and b, where a ≥ 0, and b ≥ 0, √a ∗ b = √a ∗ √b or √a ∗ √b = √a ∗ b. Multiply two numbers under the same root: √15 ∗ √3 = √15 ∗ 3 = √45. Since 45 is not a perfect square we need to separate it into two numbers, where one of them must be a perfect square: √45 = √9 ∗ 5 = √9 ∗ √5. Evaluate each square root and multiply them: √9 ∗ √5 = 3 ∗ √5 = 3√5''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #1 of square root',
          keyboardType: 'digit'),
      Question(
          id: 19,
          title: '''Remember:
For any real numbers a and b, where a ≥ 0, and b ≥ 0,

√(a ∗ b) = √a ∗ √b or √a ∗ √b = √(a ∗ b)

Solve:''',
          text: '''√10 ∗ √20''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '10√2',
          explanation:
              '''For any real numbers a and b, where a ≥ 0, and b ≥ 0, √a ∗ b = √a ∗ √b or √a ∗ √b = √a ∗ b. Multiply two numbers under the same root: √10 ∗ √20 = √10 ∗ 20 = √200. Since 200 is not a perfect square we need to separate it into two numbers, where one of them must be a perfect square: √200 = √100 ∗ 2 = √100 ∗ √2. Evaluate each square root and multiply them: √100 ∗ √2 = 10 ∗ √2 = 10√2''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #1 of square root',
          keyboardType: 'digit'),
    ],
    'Property #2 of square root': [
      Question(
          id: 0,
          title:
              '''Remember: for any real numbers a and b where a≥ 0, and b ≥ 0, √(a/b) = √a/√b''',
          text: '''√(25 / 4)''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '5 / 2',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #2 of square root',
          keyboardType: 'digit'),
      Question(
          id: 1,
          title:
              '''Remember: for any real numbers a and b where a≥ 0, and b ≥ 0, √(a/b) = √a/√b''',
          text: '''√(20 / 5)''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '√(4) = 2',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #2 of square root',
          keyboardType: 'digit'),
      Question(
          id: 2,
          title:
              '''Remember: for any real numbers a and b where a≥ 0, and b ≥ 0, √(a/b) = √a/√b''',
          text: '''√(36 / 49)''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '6 / 7',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #2 of square root',
          keyboardType: 'digit'),
      Question(
          id: 3,
          title:
              '''Remember: for any real numbers a and b where a≥ 0, and b ≥ 0, √(a/b) = √a/√b''',
          text: '''√(18 / 2)''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '3',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #2 of square root',
          keyboardType: 'digit'),
      Question(
          id: 4,
          title:
              '''Remember: for any real numbers a and b where a≥ 0, and b ≥ 0, √(a/b) = √a/√b''',
          text: '''√(100 / 16)''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '10 / 4',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #2 of square root',
          keyboardType: 'digit'),
      Question(
          id: 5,
          title:
              '''Remember: for any real numbers a and b where a≥ 0, and b ≥ 0, √(a/b) = √a/√b''',
          text: '''√(48 / 3)''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '4',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #2 of square root',
          keyboardType: 'digit'),
      Question(
          id: 6,
          title:
              '''Remember: for any real numbers a and b where a≥ 0, and b ≥ 0, √(a/b) = √a/√b''',
          text: '''√(9 / 4)''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '3 / 2',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #2 of square root',
          keyboardType: 'digit'),
      Question(
          id: 7,
          title:
              '''Remember: for any real numbers a and b where a≥ 0, and b ≥ 0, √(a/b) = √a/√b''',
          text: '''√(12 / 3)''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: ' 2',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #2 of square root',
          keyboardType: 'digit'),
      Question(
          id: 8,
          title:
              '''Remember: for any real numbers a and b where a≥ 0, and b ≥ 0, √(a/b) = √a/√b''',
          text: '''√(64 / 121)''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '8 / 11',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #2 of square root',
          keyboardType: 'digit'),
      Question(
          id: 9,
          title:
              '''Remember: for any real numbers a and b where a≥ 0, and b ≥ 0, √(a/b) = √a/√b''',
          text: '''√(605 / 5)''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '11',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #2 of square root',
          keyboardType: 'digit'),
      Question(
          id: 10,
          title:
              '''Remember: for any real numbers a and b where a≥ 0, and b ≥ 0, √(a/b) = √a/√b''',
          text: '''√(25 / 9)''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '5 / 3',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #2 of square root',
          keyboardType: 'digit'),
      Question(
          id: 11,
          title:
              '''Remember: for any real numbers a and b where a≥ 0, and b ≥ 0, √(a/b) = √a/√b''',
          text: '''√(18 / 2)''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '3',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #2 of square root',
          keyboardType: 'digit'),
      Question(
          id: 12,
          title:
              '''Remember: for any real numbers a and b where a≥ 0, and b ≥ 0, √(a/b) = √a/√b''',
          text: '''√(40 / 4)''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '9 / 2',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #2 of square root',
          keyboardType: 'digit'),
      Question(
          id: 13,
          title:
              '''Remember: for any real numbers a and b where a≥ 0, and b ≥ 0, √(a/b) = √a/√b''',
          text: '''√(24 / 16)''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '6 / 4',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #2 of square root',
          keyboardType: 'digit'),
      Question(
          id: 14,
          title:
              '''Remember: for any real numbers a and b where a≥ 0, and b ≥ 0, √(a/b) = √a/√b''',
          text: '''√(3136 / 36)''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '11 / 6',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #2 of square root',
          keyboardType: 'digit'),
      Question(
          id: 15,
          title:
              '''Remember: for any real numbers a and b where a≥ 0, and b ≥ 0, √(a/b) = √a/√b''',
          text: '''√(54 / 9)''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '7 / 3',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #2 of square root',
          keyboardType: 'digit'),
      Question(
          id: 16,
          title:
              '''Remember: for any real numbers a and b where a≥ 0, and b ≥ 0, √(a/b) = √a/√b''',
          text: '''-√(225 / 289)''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '-15 / 17',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #2 of square root',
          keyboardType: 'digit'),
      Question(
          id: 17,
          title:
              '''Remember: for any real numbers a and b where a≥ 0, and b ≥ 0, √(a/b) = √a/√b''',
          text: '''3√(400 / 256)''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '5 / 2',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #2 of square root',
          keyboardType: 'digit'),
      Question(
          id: 18,
          title:
              '''Remember: for any real numbers a and b where a≥ 0, and b ≥ 0, √(a/b) = √a/√b''',
          text: '''-2√(486 / 6)''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '-18',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #2 of square root',
          keyboardType: 'digit'),
      Question(
          id: 19,
          title:
              '''Remember: for any real numbers a and b where a≥ 0, and b ≥ 0, √(a/b) = √a/√b''',
          text: '''√(441 / 9)''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '7',
          explanation: '''''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #2 of square root',
          keyboardType: 'digit'),
    ],
    'Property #3 of square root': [
      Question(
          id: 0,
          title:
              '''Remember: For any non-negative real number a (a ≥ 0) and n = N, (√a)^n = √a^n.''',
          text: '''(√2)^4 + (√5)^3 − (√5)^2 − (√2)^6 = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '16',
          explanation:
              '''Step 1: Change the expression to √(2^4) + √(5^3) - √(5^2) - √(2^6). Step 2: Evaluate to get √16 + √125 - √25 - √64 = 4 + 25 - 5 - 8 = 16.''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #3 of square root',
          keyboardType: 'digit'),
      Question(
          id: 1,
          title:
              '''Remember: For any non-negative real number a (a ≥ 0) and n = N, (√a)^n = √a^n.''',
          text: '''(√4)^4 − (√3)^4 + (√6)^4 − (√6)^2 = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '37',
          explanation:
              '''Step 1: Change the expression to √(4^4) - √(3^4) + √(6^4) - √(6^2). Step 2: Evaluate to get √256 - √81 + √1296 - √36 = 16 - 9 + 36 - 6 = 37.''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #3 of square root',
          keyboardType: 'digit'),
      Question(
          id: 2,
          title:
              '''Remember: For any non-negative real number a (a ≥ 0) and n = N, (√a)^n = √a^n.''',
          text: '''(√2)^2 + (√3)^2 + (√2)^4 − (√4)^2 = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '5',
          explanation:
              '''Step 1: Change the expression to √(2^2) + √(3^2) + √(2^4) - √(4^2). Step 2: Evaluate to get √4 + √9 + √16 - √16 = 2 + 3 + 4 - 4 = 5.''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #3 of square root',
          keyboardType: 'digit'),
      Question(
          id: 3,
          title:
              '''Remember: For any non-negative real number a (a ≥ 0) and n = N, (√a)^n = √a^n.''',
          text: '''(√9)^4 − (√8)^4 + (√5)^2 − (√6)^2 = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '16',
          explanation:
              '''Step 1: Change the expression to √(9^4) - √(8^4) + √(5^2) - √(6^2). Step 2: Evaluate to get √6561 - √4096 + √25 - √36 = 81 - 64 + 5 - 6 = 16.''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #3 of square root',
          keyboardType: 'digit'),
      Question(
          id: 4,
          title:
              '''Remember: For any non-negative real number a (a ≥ 0) and n = N, (√a)^n = √a^n.''',
          text: '''(√7)^2 + (√2)^4 − (√5)^4 + (√5)^2 = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '-9',
          explanation:
              '''Step 1: Change the expression to √(7^2) + √(2^4) - √(5^4) + √(5^2). Step 2: Evaluate to get √49 + √16 - √625 + √25 = 7 + 4 - 25 + 5 = -9.''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #3 of square root',
          keyboardType: 'digit'),
      Question(
          id: 5,
          title:
              '''Remember: For any non-negative real number a (a ≥ 0) and n = N, (√a)^n = √a^n.''',
          text: '''(√3)^6 − (√5)^4 + (√5)^4 − (√7)^2 = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '20',
          explanation:
              '''Step 1: Change the expression to √(3^6) - √(5^4) + √(5^4) - √(7^2). Step 2: Evaluate to get √729 - √625 + √625 - √49 = 27 - 25 + 25 - 7 = 20.''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #3 of square root',
          keyboardType: 'digit'),
      Question(
          id: 6,
          title:
              '''Remember: For any non-negative real number a (a ≥ 0) and n = N, (√a)^n = √a^n.''',
          text: '''(√7)^4 + (√9)^4 + (√4)^8 − (√7)^6 = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '43',
          explanation:
              '''Step 1: Change the expression to √(7^4) + √(9^4) + √(4^8) - √(7^6). Step 2: Evaluate to get √2401 + √6561 + √(4^4)^2 - √(7^3)^2 = 49 + 81 + 256 - 343 = 43.''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #3 of square root',
          keyboardType: 'digit'),
      Question(
          id: 7,
          title:
              '''Remember: For any non-negative real number a (a ≥ 0) and n = N, (√a)^n = √a^n.''',
          text: '''(√6)^4 − (√2)^4 + (√5)^4 − (√4)^2 = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '53',
          explanation:
              '''Step 1: Change the expression to √(6^4) - √(2^4) + √(5^4) - √(4^2). Step 2: Evaluate to get √1296 - √16 + √625 - √16 = 36 - 4 + 25 - 4 = 53.''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #3 of square root',
          keyboardType: 'digit'),
      Question(
          id: 8,
          title:
              '''Remember: For any non-negative real number a (a ≥ 0) and n = N, (√a)^n = √a^n.''',
          text: '''−(√2)^6 − (√3)^4 + (√3)^6 − (√2)^4 = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '6',
          explanation:
              '''Step 1: Change the expression to -√(2^6) - √(3^4) + √(3^6) - √(2^4). Step 2: Evaluate to get -√64 - √81 + √729 - √16 = -8 - 9 + 27 - 4 = 6.''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #3 of square root',
          keyboardType: 'digit'),
      Question(
          id: 9,
          title:
              '''Remember: For any non-negative real number a (a ≥ 0) and n = N, (√a)^n = √a^n.''',
          text: '''(√6)^4 − (√42)^2 + (√5)^4 + (√1)^2 = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '20',
          explanation:
              '''Step 1: Change the expression to √(6^4) - √(42^2) + √(5^4) + √(1^2). Step 2: Evaluate to get √1296 - √1764 + √625 + √1 = 36 - 42 + 25 + 1 = 20.''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #3 of square root',
          keyboardType: 'digit'),
      Question(
          id: 10,
          title:
              '''Remember: For any non-negative real number a (a ≥ 0) and n = N, (√a)^n = √a^n.''',
          text: '''(√5)^3 + (√17)^2 + (√3)^4 − (√7)^2 = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '5√5 + 19',
          explanation:
              '''Step 1: Change the expression to √(5^3) + √(17^2) + √(3^4) - √(7^2). Step 2: Evaluate to get 5√5 + √172 + √81 - √49 = 5√5 + 9 + 17 - 7 = 5√5 + 19.''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #3 of square root',
          keyboardType: 'digit'),
      Question(
          id: 11,
          title:
              '''Remember: For any non-negative real number a (a ≥ 0) and n = N, (√a)^n = √a^n.''',
          text: '''(√16)^2 + (√7)^3 + (√5)^2 − (√2)^4 = ''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '7√7 + 17',
          explanation:
              '''Step 1: Change the expression to √(16^2) + √(7^3) + √(5^2) - √(2^4). Step 2: Evaluate to get √162 + 7√7 + √25 - √16 = 16 + 7√7 + 5 - 4 = 7√7 + 17.''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #3 of square root',
          keyboardType: 'digit'),
      Question(
          id: 12,
          title:
              '''Remember: For any non-negative real number a (a ≥ 0) and n = N, (√a)^n = √a^n.''',
          text: '''(√5)^3 − (√7)^4 − (√2)^4 + (√5)^2 = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '5√5 - 48',
          explanation:
              '''Step 1: Change the expression to √(5^3) - √(7^4) - √(2^4) + √(5^2). Step 2: Evaluate to get 5√5 - √(7^2)^2 - √16 + √25 = 5√5 - 49 - 4 + 5 = 5√5 - 48.''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #3 of square root',
          keyboardType: 'digit'),
      Question(
          id: 13,
          title:
              '''Remember: For any non-negative real number a (a ≥ 0) and n = N, (√a)^n = √a^n.''',
          text: '''(√3)^3 + (√5)^4 + (√5)^4 − (√3)^2 = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '3√3 + 47',
          explanation:
              '''Step 1: Change the expression to √(3^3) + √(5^4) + √(5^4) - √(3^2). Step 2: Evaluate to get 3√3 + √625 + √625 - √9 = 3√3 + 25 + 25 - 3 = 3√3 + 47.''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #3 of square root',
          keyboardType: 'digit'),
      Question(
          id: 14,
          title:
              '''Remember: For any non-negative real number a (a ≥ 0) and n = N, (√a)^n = √a^n.''',
          text: '''(√4)^8 + (√2)^3 + (√2)^4 − (√5)^6 = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '2√2 + 135',
          explanation:
              '''Step 1: Change the expression to √(4^8) + √(2^3) + √(2^4) - √(5^6). Step 2: Evaluate to get √(4^4)^2 + 2√2 + √16 - √(5^3)^2 = 256 + 2√2 + 4 - 125 = 2√2 + 135.''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #3 of square root',
          keyboardType: 'digit'),
      Question(
          id: 15,
          title:
              '''Remember: For any non-negative real number a (a ≥ 0) and n = N, (√a)^n = √a^n.''',
          text: '''(√10)^2 + (√3)^3 + (√2)^4 − (√5)^2 = ''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '3√3 + 9',
          explanation:
              '''Step 1: Change the expression to √(10^2) + √(3^3) + √(2^4) - √(5^2). Step 2: Evaluate to get √100 + 3√3 + √16 - √25 = 10 + 3√3 + 4 - 5 = 3√3 + 9.''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #3 of square root',
          keyboardType: 'digit'),
      Question(
          id: 16,
          title:
              '''Remember: For any non-negative real number a (a ≥ 0) and n = N, (√a)^n = √a^n.''',
          text: '''(√7)^6 + (2√2)^4 + (√6)^2 − (√36/√9)^3 = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '405',
          explanation:
              '''Step 1: Change the expression to √(7^6) + √(8^4) + √(6^2) - (√36/√9)^3. Step 2: Evaluate to get √(7^3)^2 + √(8^2)^2 + √36 - 8 = 343 + 64 + 6 - 8 = 405.''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #3 of square root',
          keyboardType: 'digit'),
      Question(
          id: 17,
          title:
              '''Remember: For any non-negative real number a (a ≥ 0) and n = N, (√a)^n = √a^n.''',
          text: '''(√5)^3 + (3√4)^2 + (√2)^4 − (√27/3)^2 = ''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '5√5 + 31',
          explanation:
              '''Step 1: Change the expression to √(5^3) + √(36^2) + √(2^4) - (√27/3)^2. Step 2: Evaluate to get 5√5 + √362 + √16 - 9 = 5√5 + 36 + 4 - 9 = 5√5 + 31.''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #3 of square root',
          keyboardType: 'digit'),
      Question(
          id: 18,
          title:
              '''Remember: For any non-negative real number a (a ≥ 0) and n = N, (√a)^n = √a^n.''',
          text: '''(√2)^6 + (4√2)^3 + (√8)^2 − (√100/4)^2 = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '128√2 - 9',
          explanation:
              '''Step 1: Change the expression to √(2^6) + √(32^3) + √(8^2) - (√25)^2. Step 2: Evaluate to get √(2^3)^2 + 32√32 + √64 - 25 = 8 + 128√2 + 8 - 25 = 128√2 - 9.''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #3 of square root',
          keyboardType: 'digit'),
      Question(
          id: 19,
          title:
              '''Remember: For any non-negative real number a (a ≥ 0) and n = N, (√a)^n = √a^n.''',
          text: '''(√7)^3 + (3√3)^2 + (√6)^4 − (√20/√5)^5 = ''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '7√7 + 81√3 + 4',
          explanation:
              '''Step 1: Change the expression to √(7^3) + √(27^3) + √(6^4) - (√20/5)^5. Step 2: Evaluate to get 7√7 + 81√3 + 36 - 32 = 7√7 + 81√3 + 4.''',
          subjectId: "math",
          themeId: 'Roots',
          testId: 'Property #3 of square root',
          keyboardType: 'digit'),
    ],
  },
  'Radicals': {
    'Compare the radicals': [
      Question(
          id: 0,
          title: '''Compare and provide correct sign''',
          text: '''√9...3''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '=',
          explanation: '''Step 1: Let's write 3 as root of √9 (as 3^2 = 9)
Step 2: Lastly compare √9 and √9
√9 = √9''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Compare the radicals',
          keyboardType: 'digit'),
      Question(
          id: 1,
          title: '''Compare and provide correct sign''',
          text: '''√5...2''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '>',
          explanation: '''Step 1: Let's write 2 as root of √4 (as 2^2 = 4)
Step 2: Lastly compare √5 and √4
√5 > √4''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Compare the radicals',
          keyboardType: 'digit'),
      Question(
          id: 2,
          title: '''Compare and provide correct sign''',
          text: '''√25...10''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '<',
          explanation: '''Step 1: Let's write 10 as root of √100 (as 10^2 = 100)
Step 2: Lastly compare √25 and √100
√25 < √100''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Compare the radicals',
          keyboardType: 'digit'),
      Question(
          id: 3,
          title: '''Compare and provide correct sign''',
          text: '''√7...7''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '<',
          explanation: '''Step 1: Let's write 7 as root of √49 (as 7^2 = 49)
Step 2: Lastly compare √7 and √49
√7 < √49''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Compare the radicals',
          keyboardType: 'digit'),
      Question(
          id: 4,
          title: '''Compare and provide correct sign''',
          text: '''√37...6''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '>',
          explanation: '''Step 1: Let's write 6 as root of √36 (as 6^2 = 36)
Step 2: Lastly compare √37 and √36
√37 > √36''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Compare the radicals',
          keyboardType: 'digit'),
      Question(
          id: 5,
          title: '''Compare and provide correct sign''',
          text: '''√64...7''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '>',
          explanation: '''Step 1: Let's write √64 as 8 (as 8^2 = 64)
Step 2: Lastly compare 8 and 7
8 > 7''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Compare the radicals',
          keyboardType: 'digit'),
      Question(
          id: 6,
          title: '''Compare and provide correct sign''',
          text: '''√81...9''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '=',
          explanation: '''Step 1: Let's write √81 as 9 (as 9^2 = 81)
Step 2: Lastly compare 9 and 9
9 = 9''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Compare the radicals',
          keyboardType: 'digit'),
      Question(
          id: 7,
          title: '''Compare and provide correct sign''',
          text: '''√4...4''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '<',
          explanation: '''Step 1: Let's write √4 as 2 (as 2^2 = 4)
Step 2: Lastly compare 2 and 4
2 < 4''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Compare the radicals',
          keyboardType: 'digit'),
      Question(
          id: 8,
          title: '''Compare and provide correct sign''',
          text: '''√121...12''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '<',
          explanation: '''Step 1: Let's write √121 as 11 (as 11^2 = 121)
Step 2: Lastly compare 11 and 12
11 < 12''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Compare the radicals',
          keyboardType: 'digit'),
      Question(
          id: 9,
          title: '''Compare and provide correct sign''',
          text: '''14...√144''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '>',
          explanation: '''Step 1: Let's write √144 as 12 (as 12^2 = 144)
Step 2: Lastly compare 14 and 12
14 > 12''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Compare the radicals',
          keyboardType: 'digit'),
      Question(
          id: 10,
          title: '''Compare and provide correct sign''',
          text: '''3√2...2√3''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '>',
          explanation:
              '''Step 1: Let's write 3√2 = √3^2 * 2 = √18 and 2√3 = √2^2 * 3 = √12
Step 2: Lastly compare √18 and √12
√18 > √12''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Compare the radicals',
          keyboardType: 'digit'),
      Question(
          id: 11,
          title: '''Compare and provide correct sign''',
          text: '''4√5...5√4''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '<',
          explanation:
              '''Step 1: Let's write 4√5 = √4^2 * 5 = √80 and 5√4 = √5^2 * 4 = √100
Step 2: Lastly compare √80 and √100
√80 < √100''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Compare the radicals',
          keyboardType: 'digit'),
      Question(
          id: 12,
          title: '''Compare and provide correct sign''',
          text: '''4√8...7√2''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '>',
          explanation:
              '''Step 1: Let's write 4√8 = √4^2 * 8 = √128 and 7√2 = √7^2 * 2 = √98
Step 2: Lastly compare √128 and √98
√128 > √98''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Compare the radicals',
          keyboardType: 'digit'),
      Question(
          id: 13,
          title: '''Compare and provide correct sign''',
          text: '''3√9...4√7''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '<',
          explanation:
              '''Step 1: Let's write 3√9 = √3^2 * 9 = √81 and 4√7 = √4^2 * 7 = √112
Step 2: Lastly compare √81 and √112
√81 < √112''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Compare the radicals',
          keyboardType: 'digit'),
      Question(
          id: 14,
          title: '''Compare and provide correct sign''',
          text: '''2√81...√441''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '<',
          explanation:
              '''Step 1: Let's write 2√81 = √2^2 * 81 = √324 and √441 = √441
Step 2: Lastly compare √324 and √441
√324 < √441''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Compare the radicals',
          keyboardType: 'digit'),
      Question(
          id: 15,
          title: '''Compare and provide correct sign''',
          text: '''8√3...10√2''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '<',
          explanation:
              '''Step 1: Let's write 8√3 = √8^2 * 3 = √192 and 10√2 = √10^2 * 2 = √200
Step 2: Lastly compare √192 and √200
√192 < √200''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Compare the radicals',
          keyboardType: 'digit'),
      Question(
          id: 16,
          title: '''Compare and provide correct sign''',
          text: '''10√5...9√7''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '<',
          explanation:
              '''Step 1: Let's write 10√5 = √10^2 * 5 = √500 and 9√7 = √9^2 * 7 = √567
Step 2: Lastly compare √500 and √567
√500 < √567''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Compare the radicals',
          keyboardType: 'digit'),
      Question(
          id: 17,
          title: '''Compare and provide correct sign''',
          text: '''7√5...√150''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '>',
          explanation:
              '''Step 1: Let's write 7√5 = √7^2 * 5 = √245 and √150 = √150
Step 2: Lastly compare √245 and √150
√245 > √150''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Compare the radicals',
          keyboardType: 'digit'),
      Question(
          id: 18,
          title: '''Compare and provide correct sign''',
          text: '''10√7...8√16''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '<',
          explanation:
              '''Step 1: Let's write 10√7 = √10^2 * 7 = √700 and 8√16 = √8^2 * 16 = √1024
Step 2: Lastly compare √700 and √1024
√700 < √1024''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Compare the radicals',
          keyboardType: 'digit'),
      Question(
          id: 19,
          title: '''Compare and provide correct sign''',
          text: '''8√10...7√12''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '>',
          explanation:
              '''Step 1: Let's write 8√10 = √8^2 * 10 = √800 and 7√12 = √7^2 * 12 = √588
Step 2: Lastly compare √800 and √588
√800 > √588''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Compare the radicals',
          keyboardType: 'digit'),
    ],
    'Perform the radical expressions': [
      Question(
          id: 0,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''√6 + √6''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '2√6',
          explanation: '''Step 1: Write the expression as (1 + 1)√6.
Step 2: Combine the terms to get 2√6.''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Perform the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 1,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''√5 + √5''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '2√5',
          explanation: '''Step 1: Write the expression as (1 + 1)√5.
Step 2: Combine the terms to get 2√5.''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Perform the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 2,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''3√3 + √3''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '4√3',
          explanation: '''Step 1: Write the expression as (3 + 1)√3.
Step 2: Combine the terms to get 4√3.''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Perform the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 3,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''8√2 − 6√2''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '2√2',
          explanation: '''Step 1: Write the expression as (8 − 6)√2.
Step 2: Combine the terms to get 2√2.''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Perform the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 4,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''15√5 − 8√5''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '7√5',
          explanation: '''Step 1: Write the expression as (15 − 8)√5.
Step 2: Combine the terms to get 7√5.''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Perform the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 5,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''4√10 − 5√10''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '-1√10',
          explanation: '''Step 1: Write the expression as (4 − 5)√10.
Step 2: Combine the terms to get -1√10.''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Perform the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 6,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''4√7 − 2√7''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '2√7',
          explanation: '''Step 1: Write the expression as (4 − 2)√7.
Step 2: Combine the terms to get 2√7.''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Perform the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 7,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''9√3 + 5√3''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '14√3',
          explanation: '''Step 1: Write the expression as (9 + 5)√3.
Step 2: Combine the terms to get 14√3.''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Perform the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 8,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''7√6 − 10√6 + 4√6''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '√6',
          explanation: '''Step 1: Write the expression as (7 − 10 + 4)√6.
Step 2: Combine the terms to get √6.''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Perform the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 9,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''4√5 + 2√5 − 8√5''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '-2√5',
          explanation: '''Step 1: Write the expression as (4 + 2 − 8)√5.
Step 2: Combine the terms to get -2√5.''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Perform the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 10,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''√45 + √20''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '5√5',
          explanation:
              '''Step 1: Convert to mixed form: √45 = 3√5 and √20 = 2√5.
Step 2: Combine the terms to get 5√5.''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Perform the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 11,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''√32 − √18''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '√2',
          explanation:
              '''Step 1: Convert to mixed form: √32 = 4√2 and √18 = 3√2.
Step 2: Combine the terms to get √2.''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Perform the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 12,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''√90 + √24 − √40 − √54''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '√10 − √6',
          explanation:
              '''Step 1: Convert to mixed form: √90 = 3√10, √24 = 2√6, √40 = 2√10, √54 = 3√6.
Step 2: Combine the terms to get √10 − √6.''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Perform the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 13,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''3√50 + 4√32''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '31√2',
          explanation:
              '''Step 1: Convert to mixed form: √50 = 5√2 and √32 = 4√2.
Step 2: Combine the terms to get 31√2.''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Perform the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 14,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''3√27 − 2√27 − √48''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '-1√3',
          explanation:
              '''Step 1: Convert to mixed form: √27 = 3√3 and √48 = 4√3.
Step 2: Combine the terms to get -1√3.''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Perform the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 15,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''2√18 − 3√75 − 2√98 + 4√48''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '-8√2 + √3',
          explanation:
              '''Step 1: Convert to mixed form: √18 = 3√2, √75 = 5√3, √98 = 7√2, √48 = 4√3.
Step 2: Combine the terms to get -8√2 + √3.''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Perform the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 16,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''2√45 − √x + √80 + 3√x''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '10√5 + 2√x',
          explanation:
              '''Step 1: Convert to mixed form: √45 = 3√5 and √80 = 4√5.
Step 2: Combine the terms to get 10√5 + 2√x.''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Perform the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 17,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''-√45 + 3√18 − 3√20 − √24''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '-9√5 + 9√2 − 2√6',
          explanation:
              '''Step 1: Convert to mixed form: √45 = 3√5, √18 = 3√2, √20 = 2√5, √24 = 2√6.
Step 2: Combine the terms to get -9√5 + 9√2 − 2√6.''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Perform the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 18,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''-4√112 + 3√28 + 4√8 − √128''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '-10√7',
          explanation:
              '''Step 1: Convert to mixed form: √112 = 4√7, √28 = 2√7, √8 = 2√2, √128 = 8√2.
Step 2: Combine the terms to get -10√7.''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Perform the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 19,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''4√6 + 3√24 − 2√147 − 2√12''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '10√6 − 18√3',
          explanation:
              '''Step 1: Convert to mixed form: √24 = 2√6, √147 = 7√3, √12 = 2√3.
Step 2: Combine the terms to get 10√6 − 18√3.''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Perform the radical expressions',
          keyboardType: 'digit'),
    ],
    'Simplify the radical expressions': [
      Question(
          id: 0,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''2√96 + √24 − √150''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '5√6',
          explanation:
              '''Step 1: Convert each radical into mixed form with the same √x

        2√96 + √24 − √150 = 2√(16 * 6) + √(4 * 6) − √(25 * 6)

        = 2(4√6) + 2√6 − 5√6

        = 8√6 + 2√6 − 5√6


        Step 2: Add and subtract them

        8√6 + 2√6 − 5√6 = (8 + 2 − 5)√6 = 5√6''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Simplify the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 1,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''3√3 + √27 + √12 − 2√3''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '6√3',
          explanation:
              '''Step 1: Convert each radical into mixed form with the same √x

        3√3 + √27 + √12 − 2√3 = 3√3 + √(9 * 3) + √(4 * 3) − 2√3

        = 3√3 + 3√3 + 2√3 − 2√3


        Step 2: Add and subtract them

        3√3 + 3√3 + 2√3 − 2√3 = (3 + 3 + 2 − 2)√3 = 6√3''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Simplify the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 2,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''2√45 + √20 − 9√5 − √80''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '-5√5',
          explanation:
              '''Step 1: Convert each radical into mixed form with the same √x

        2√45 + √20 − 9√5 − √80 = 2√(9 * 5) + √(4 * 5) − 9√5 − √(16 * 5)

        = 2(3√5) + 2√5 − 9√5 − 4√5

        = 6√5 + 2√5 − 9√5 − 4√5


        Step 2: Add and subtract them

        6√5 + 2√5 − 9√5 − 4√5 = (6 + 2 − 9 − 4)√5 = -5√5''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Simplify the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 3,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''9√2 + 6√18 − √32 + √8''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '25√2',
          explanation:
              '''Step 1: Convert each radical into mixed form with the same √x

        9√2 + 6√18 − √32 + √8 = 9√2 + 6√(9 * 2) − √(16 * 2) + √(4 * 2)

        = 9√2 + 18√2 − 4√2 + 2√2


        Step 2: Add and subtract them

        9√2 + 18√2 − 4√2 + 2√2 = (9 + 18 − 4 + 2)√2 = 25√2''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Simplify the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 4,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''6√3 − √12 + 5√48 − 2√75''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '14√3',
          explanation:
              '''Step 1: Convert each radical into mixed form with the same √x

        6√3 − √12 + 5√48 − 2√75 = 6√3 − √(4 * 3) + 5√(16 * 3) − 2√(25 * 3)

        = 6√3 − 2√3 + 20√3 − 10√3


        Step 2: Add and subtract them

        6√3 − 2√3 + 20√3 − 10√3 = (6 − 2 + 20 − 10)√3 = 14√3''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Simplify the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 5,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''3√3 − 10√12 − 3√48 + 2√75''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '-19√3',
          explanation:
              '''Step 1: Convert each radical into mixed form with the same √x

        3√3 − 10√12 − 3√48 + 2√75 = 3√3 − 10√(4 * 3) − 3√(16 * 3) + 2√(25 * 3)

        = 3√3 − 20√3 − 12√3 + 10√3


        Step 2: Add and subtract them

        3√3 − 20√3 − 12√3 + 10√3 = (3 − 20 − 12 + 10)√3 = -19√3''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Simplify the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 6,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''6√80 + 2√20 − √45 − 2√5''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '23√5',
          explanation:
              '''Step 1: Convert each radical into mixed form with the same √x

        6√80 + 2√20 − √45 − 2√5 = 6√(16 * 5) + 2√(4 * 5) − √(9 * 5) − 2√5

        = 24√5 + 4√5 − 3√5 − 2√5


        Step 2: Add and subtract them

        24√5 + 4√5 − 3√5 − 2√5 = (24 + 4 − 3 − 2)√5 = 23√5''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Simplify the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 7,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''√7 + 8√343 − 2√1008 + √63''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '36√7',
          explanation:
              '''Step 1: Convert each radical into mixed form with the same √x

        √7 + 8√343 − 2√1008 + √63 = √7 + 8√(49 * 7) − 2√(144 * 7) + √(9 * 7)

        = √7 + 56√7 − 24√7 + 3√7


        Step 2: Add and subtract them

        √7 + 56√7 − 24√7 + 3√7 = (1 + 56 − 24 + 3)√7 = 36√7''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Simplify the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 8,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''6√98 − 8√72 + 3√18 − 3√162''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '-24√2',
          explanation:
              '''Step 1: Convert each radical into mixed form with the same √x

        6√98 − 8√72 + 3√18 − 3√162 = 6√(49 * 2) − 8√(36 * 2) + 3√(9 * 2) − 3√(81 * 2)

        = 42√2 − 48√2 + 9√2 − 27√2


        Step 2: Add and subtract them

        42√2 − 48√2 + 9√2 − 27√2 = (42 − 48 + 9 − 27)√2 = -24√2''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Simplify the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 9,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''4√3 − 6√147 − √75 + 3√48''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '-31√3',
          explanation:
              '''Step 1: Convert each radical into mixed form with the same √x

        4√3 − 6√147 − √75 + 3√48 = 4√3 − 6√(49 * 3) − √(25 * 3) + 3√(16 * 3)

        = 4√3 − 42√3 − 5√3 + 12√3


        Step 2: Add and subtract them

        4√3 − 42√3 − 5√3 + 12√3 = (4 − 42 − 5 + 12)√3 = -31√3''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Simplify the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 10,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''√18 + 4√242 − 2√162 − 4√72''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '23√2',
          explanation:
              '''Step 1: Convert each radical into mixed form with the same √x

        √18 + 4√242 − 2√162 − 4√72 = √(9 * 2) + 4√(121 * 2) − 2√(81 * 2) − 4√(36 * 2)

        = 3√2 + 44√2 − 18√2 − 24√2


        Step 2: Add and subtract them

        3√2 + 44√2 − 18√2 − 24√2 = (3 + 44 − 18 − 24)√2 = 23√2''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Simplify the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 11,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''4√80 − √405 − 2√5 + √245''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '12√5',
          explanation:
              '''Step 1: Convert each radical into mixed form with the same √x

        4√80 − √405 − 2√5 + √245 = 4√(16 * 5) − √(81 * 5) − 2√5 + √(49 * 5)

        = 16√5 − 9√5 − 2√5 + 7√5


        Step 2: Add and subtract them

        16√5 − 9√5 − 2√5 + 7√5 = (16 − 9 − 2 + 7)√5 = 12√5''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Simplify the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 12,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''2√72 + √8 − √128 + 9√162''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '88√2',
          explanation:
              '''Step 1: Convert each radical into mixed form with the same √x

        2√72 + √8 − √128 + 9√162 = 2√(36 * 2) + √(4 * 2) − √(64 * 2) + 9√(81 * 2)

        = 12√2 + 2√2 − 8√2 + 81√2


        Step 2: Add and subtract them

        12√2 + 2√2 − 8√2 + 81√2 = (12 + 2 − 8 + 81)√2 = 88√2''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Simplify the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 13,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''√28 + 2√175 + √567 + √63''',
          difficulty: "Easy",
          category: "Math",
          correctAnswer: '24√7',
          explanation:
              '''Step 1: Convert each radical into mixed form with the same √x

        √28 + 2√175 + √567 + √63 = √(4 * 7) + 2√(25 * 7) + √(81 * 7) + √(9 * 7)

        = 2√7 + 10√7 + 9√7 + 3√7


        Step 2: Add and subtract them

        2√7 + 10√7 + 9√7 + 3√7 = (2 + 10 + 9 + 3)√7 = 24√7''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Simplify the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 14,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''9√54 − √96 − 2√24 + 2√150''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '29√6',
          explanation:
              '''Step 1: Convert each radical into mixed form with the same √x

        9√54 − √96 − 2√24 + 2√150 = 9√(9 * 6) − √(16 * 6) − 2√(4 * 6) + 2√(25 * 6)

        = 27√6 − 4√6 − 4√6 + 10√6


        Step 2: Add and subtract them

        27√6 − 4√6 − 4√6 + 10√6 = (27 − 4 − 4 + 10)√6 = 29√6''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Simplify the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 15,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''√100 − 2√36 + 3√196 − √144''',
          difficulty: "Medium",
          category: "Math",
          correctAnswer: '28',
          explanation: '''Step 1: Evaluate each radical

        √100 − 2√36 + 3√196 − √144 = 10 − 2 * 6 + 3 * 14 − 12


        Step 2: Add and subtract them

        10 − 2 * 6 + 3 * 14 − 12 = 28''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Simplify the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 16,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''√32 + 4√18 + √50 + √288 − 5√72''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '33√2',
          explanation:
              '''Step 1: Convert each radical into mixed form with the same √x

        √32 + 4√18 + √50 + √288 − 5√72 = √(16 * 2) + 4√(9 * 2) + √(25 * 2) + √(144 * 2) − 5√(36 * 2)

        = 4√2 + 12√2 + 5√2 + 12√2 − 30√2


        Step 2: Add and subtract them

        4√2 + 12√2 + 5√2 + 12√2 − 30√2 = (4 + 12 + 5 + 12 − 30)√2 = 33√2''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Simplify the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 17,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''3√44 − √11 − 2√176 + √396''',
          difficulty: "Hard",
          category: "Math",
          correctAnswer: '3√11',
          explanation:
              '''Step 1: Convert each radical into mixed form with the same √x

        3√44 − √11 − 2√176 + √396 = 3√(4 * 11) − √11 − 2√(16 * 11) + √(36 * 11)

        = 6√11 − √11 − 8√11 + 6√11


        Step 2: Add and subtract them

        6√11 − √11 − 8√11 + 6√11 = (6 − 1 − 8 + 6)√11 = 3√11''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Simplify the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 18,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''√147 + √867 − 5√108 − 3√192''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '-30√3',
          explanation:
              '''Step 1: Convert each radical into mixed form with the same √x

        √147 + √867 − 5√108 − 3√192 = √(49 * 3) + √(289 * 3) − 5√(36 * 3) − 3√(64 * 3)

        = 7√3 + 17√3 − 30√3 − 24√3


        Step 2: Add and subtract them

        7√3 + 17√3 − 30√3 − 24√3 = (7 + 17 − 30 − 24)√3 = -30√3''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Simplify the radical expressions',
          keyboardType: 'digit'),
      Question(
          id: 19,
          title: '''For any non-zero any real numbers a, b, c and x,

        a√x + b√x - c√x = (a+b-c)√x

        For any real numbers a and b, where a>=0 and b>=0

        √(a²b) = a√b or a√b = √(a²b)
        ''',
          text: '''√252 + √700 − 4√28 − 2√112''',
          difficulty: "Master",
          category: "Math",
          correctAnswer: '0',
          explanation:
              '''Step 1: Convert each radical into mixed form with the same √x

        √252 + √700 − 4√28 − 2√112 = √(36 * 7) + √(100 * 7) − 4√(4 * 7) − 2√(16 * 7)

        = 6√7 + 10√7 − 8√7 − 8√7


        Step 2: Add and subtract them

        6√7 + 10√7 − 8√7 − 8√7 = (6 + 10 − 8 − 8)√7 = 0''',
          subjectId: "math",
          themeId: 'Radicals',
          testId: 'Simplify the radical expressions',
          keyboardType: 'digit'),
    ],
  },
};

// ⁻¹²³⁴⁵⁶⁷⁸⁹⁰ as power use this in all fields also in the explanation
// Substitute values in this class:
// change only id text correctAnswer where it needed explanation
// Dont change title
// Its Dart, no need to declare class
// difficulties: Easy, Medium, Hard, Master  spread difficulties equally
// source https://docs.google.com/document/d/11_t3-3Rfcx9TkxZRkSPduKZ9Q1ZOEpMg/edit
// write all questions by sequence
// Question(
//           id: 0,
//           title: '''Identify the base and exponent:\n
// Remember:   7⁸    7-base 8-exponent\n
// Answer: 1-base, 0-exponent;
// ',
//           text: '''4⁴ = ''',
//           difficulty: "",
//           category: "Math",
//           correctAnswer: '256',
//           explanation: '''''',
//           subjectId: "math",
//           themeId: 'Powers',
//           testId: 'Exponent powers',
//           keyboardType: 'text'),

// import random

// # Define the questions data with rewritten expressions and explanations
// questions_data = [
//     {'text': '√6 + √6', 'correctAnswer': '2√6', 'explanation': 'Step 1: Write the expression as (1 + 1)√6.\nStep 2: Combine the terms to get 2√6.'},
//     {'text': '√5 + √5', 'correctAnswer': '2√5', 'explanation': 'Step 1: Write the expression as (1 + 1)√5.\nStep 2: Combine the terms to get 2√5.'},
//     {'text': '3√3 + √3', 'correctAnswer': '4√3', 'explanation': 'Step 1: Write the expression as (3 + 1)√3.\nStep 2: Combine the terms to get 4√3.'},
//     {'text': '8√2 − 6√2', 'correctAnswer': '2√2', 'explanation': 'Step 1: Write the expression as (8 − 6)√2.\nStep 2: Combine the terms to get 2√2.'},
//     {'text': '15√5 − 8√5', 'correctAnswer': '7√5', 'explanation': 'Step 1: Write the expression as (15 − 8)√5.\nStep 2: Combine the terms to get 7√5.'},
//     {'text': '4√10 − 5√10', 'correctAnswer': '-1√10', 'explanation': 'Step 1: Write the expression as (4 − 5)√10.\nStep 2: Combine the terms to get -1√10.'},
//     {'text': '4√7 − 2√7', 'correctAnswer': '2√7', 'explanation': 'Step 1: Write the expression as (4 − 2)√7.\nStep 2: Combine the terms to get 2√7.'},
//     {'text': '9√3 + 5√3', 'correctAnswer': '14√3', 'explanation': 'Step 1: Write the expression as (9 + 5)√3.\nStep 2: Combine the terms to get 14√3.'},
//     {'text': '7√6 − 10√6 + 4√6', 'correctAnswer': '√6', 'explanation': 'Step 1: Write the expression as (7 − 10 + 4)√6.\nStep 2: Combine the terms to get √6.'},
//     {'text': '4√5 + 2√5 − 8√5', 'correctAnswer': '-2√5', 'explanation': 'Step 1: Write the expression as (4 + 2 − 8)√5.\nStep 2: Combine the terms to get -2√5.'},
//     {'text': '√45 + √20', 'correctAnswer': '5√5', 'explanation': 'Step 1: Convert to mixed form: √45 = 3√5 and √20 = 2√5.\nStep 2: Combine the terms to get 5√5.'},
//     {'text': '√32 − √18', 'correctAnswer': '√2', 'explanation': 'Step 1: Convert to mixed form: √32 = 4√2 and √18 = 3√2.\nStep 2: Combine the terms to get √2.'},
//     {'text': '√90 + √24 − √40 − √54', 'correctAnswer': '√10 − √6', 'explanation': 'Step 1: Convert to mixed form: √90 = 3√10, √24 = 2√6, √40 = 2√10, √54 = 3√6.\nStep 2: Combine the terms to get √10 − √6.'},
//     {'text': '3√50 + 4√32', 'correctAnswer': '31√2', 'explanation': 'Step 1: Convert to mixed form: √50 = 5√2 and √32 = 4√2.\nStep 2: Combine the terms to get 31√2.'},
//     {'text': '3√27 − 2√27 − √48', 'correctAnswer': '-1√3', 'explanation': 'Step 1: Convert to mixed form: √27 = 3√3 and √48 = 4√3.\nStep 2: Combine the terms to get -1√3.'},
//     {'text': '2√18 − 3√75 − 2√98 + 4√48', 'correctAnswer': '-8√2 + √3', 'explanation': 'Step 1: Convert to mixed form: √18 = 3√2, √75 = 5√3, √98 = 7√2, √48 = 4√3.\nStep 2: Combine the terms to get -8√2 + √3.'},
//     {'text': '2√45 − √x + √80 + 3√x', 'correctAnswer': '10√5 + 2√x', 'explanation': 'Step 1: Convert to mixed form: √45 = 3√5 and √80 = 4√5.\nStep 2: Combine the terms to get 10√5 + 2√x.'},
//     {'text': '-√45 + 3√18 − 3√20 − √24', 'correctAnswer': '-9√5 + 9√2 − 2√6', 'explanation': 'Step 1: Convert to mixed form: √45 = 3√5, √18 = 3√2, √20 = 2√5, √24 = 2√6.\nStep 2: Combine the terms to get -9√5 + 9√2 − 2√6.'},
//     {'text': '-4√112 + 3√28 + 4√8 − √128', 'correctAnswer': '-10√7', 'explanation': 'Step 1: Convert to mixed form: √112 = 4√7, √28 = 2√7, √8 = 2√2, √128 = 8√2.\nStep 2: Combine the terms to get -10√7.'},
//     {'text': '4√6 + 3√24 − 2√147 − 2√12', 'correctAnswer': '10√6 − 18√3', 'explanation': 'Step 1: Convert to mixed form: √24 = 2√6, √147 = 7√3, √12 = 2√3.\nStep 2: Combine the terms to get 10√6 − 18√3.'}
// ]

// # Define the difficulties
// difficulties = ["Easy", "Medium", "Hard", "Master"]

// # Function to generate question IDs
// def generate_question_id(index):
//     return index

// # Function to assign difficulty
// def assign_difficulty(index, total):
//     easy_threshold = int(0.80 * total)
//     medium_threshold = int(0.90 * total)
//     hard_threshold = int(0.95 * total)

//     if index < easy_threshold:
//         return "Easy"
//     elif index < medium_threshold:
//         return "Medium"
//     elif index < hard_threshold:
//         return "Hard"
//     else:
//         return "Master"

// # Generate questions
// questions = []
// total_questions = len(questions_data)
// for index, data in enumerate(questions_data):
//     question = {
//         'id': generate_question_id(index),
//         'title': 'Rewrite the expression using exponents:',
//         'text': f"{data['text']}",
//         'difficulty': assign_difficulty(index, total_questions),
//         'category': "Math",
//         'correctAnswer': f"{data['correctAnswer']}",
//         'explanation': f"{data['explanation']}",
//         'subjectId': "math",
//         'themeId': 'Radicals',
//         'testId': 'Perform the radical expressions',
//         'keyboardType': 'digit'
//     }
//     questions.append(question)

// # Output questions in the desired format
// for q in questions:
//     print(f"Question(\n"
//           f"    id: {q['id']},\n"
//           f"    title: 'Rewrite the expression using exponents:',\n"
//           f"    text: '''{q['text']}''',\n"
//           f"    difficulty: \"{q['difficulty']}\",\n"
//           f"    category: \"{q['category']}\",\n"
//           f"    correctAnswer: '{q['correctAnswer']}',\n"
//           f"    explanation: '''{q['explanation']}''',\n"
//           f"    subjectId: \"{q['subjectId']}\",\n"
//           f"    themeId: '{q['themeId']}',\n"
//           f"    testId: '{q['testId']}',\n"
//           f"    keyboardType: '{q['keyboardType']}'),\n")
