import 'package:flutter/cupertino.dart';
import 'package:ixl/features/presentation/pages/subjects/lessons.dart';

class Lesson {
  String title;
  bool isExpanded;
  String category;
  List<LessonItem> items;

  Lesson({required this.title, required this.items, required this.category, this.isExpanded = false});
}

class LessonItem {
  String subtitle;
  int score;

  LessonItem({required this.subtitle, required this.score});
}

class LessonListMath extends StatefulWidget {
  @override
  _LessonListMathState createState() => _LessonListMathState();
}

class _LessonListMathState extends State<LessonListMath> {
  List<Lesson> topics = [
    Lesson(
      title: 'Add and subtract whole numbers',
      isExpanded: true,
      category: 'Math',
      items: [
        LessonItem(subtitle: 'Add and subtract whole numbers', score: 83),
        LessonItem(subtitle: 'Add and subtract whole numbers: word problems', score: 76),
      ],
    ),
    Lesson(
      title: 'Multiply whole numbers',
      isExpanded: false,
      category: 'Math',
      items: [
        LessonItem(subtitle: 'Multiply whole numbers', score: 0),
        LessonItem(subtitle: 'Multiply whole numbers: words problems', score: 0),
        LessonItem(subtitle: 'Multiply numbers ending in zeros', score: 0),
        LessonItem(subtitle: 'Multiply numbers ending in zeros: word problems', score: 0),
        LessonItem(subtitle: 'Estimate products', score: 0),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: topics.map((lesson) {
        return LessonsWidget(
          lesson: lesson,
          onExpansionChanged: (bool expanded) {
            setState(() {
              lesson.isExpanded = expanded;
            });
          },
        );
      }).toList(),
    );
  }
}

