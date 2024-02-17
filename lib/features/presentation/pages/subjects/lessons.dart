import 'package:flutter/material.dart';
import 'package:ixl/features/presentation/pages/subjects/models/lesson.dart';

class LessonsWidget extends StatelessWidget {
  final Lesson lesson;
  final ValueChanged<bool> onExpansionChanged;

  LessonsWidget({
    required this.lesson,
    required this.onExpansionChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(lesson.title),
      initiallyExpanded: lesson.isExpanded,
      onExpansionChanged: onExpansionChanged,
      children: lesson.items.map((item) => ScoreItemWidget(item: item)).toList(),
    );
  }
}

class ScoreItemWidget extends StatelessWidget {
  final LessonItem item;

  ScoreItemWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.subtitle),
      trailing: Text('${item.score}/100'),
    );
  }
}