
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

