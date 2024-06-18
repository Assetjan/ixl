import 'dart:developer' as dev;
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ixl/config/routes/app_routes.dart';
import 'package:ixl/core/colors.dart';
import 'package:ixl/core/services/get_points_firestore.dart';
import 'package:ixl/features/presentation/pages/question/question_page.dart';
import 'package:ixl/features/presentation/pages/subjects/models/lesson.dart';

class LessonProvider extends ChangeNotifier {
  String? getCurrentUserEmail() {
    final user = FirebaseAuth.instance.currentUser;
    return user?.email;
  }

  List<Lesson> lessonTopics = [
    Lesson(
      title: 'Powers',
      isExpanded: false,
      category: 'math',
      items: [
        LessonItem(subtitle: 'Power operations'),
        LessonItem(subtitle: 'Power evaluations'),
        LessonItem(subtitle: 'Exponent powers'),
        LessonItem(subtitle: 'Rewrite expression')
      ],
    ),
    Lesson(
      title: 'Roots',
      isExpanded: false,
      category: 'math',
      items: [
        LessonItem(subtitle: 'Square roots'),
        LessonItem(subtitle: 'Property #1 of square root'),
        LessonItem(subtitle: 'Property #2 of square root'),
        LessonItem(subtitle: 'Property #3 of square root'),
      ],
    ),
  ];
  List<Lesson> seven_grade_lessonTopics = [
    Lesson(
      title: 'Powers',
      isExpanded: false,
      category: 'math',
      items: [
        LessonItem(subtitle: 'Power operations'),
        LessonItem(subtitle: 'Power evaluations'),
        LessonItem(subtitle: 'Exponent powers'),
        LessonItem(subtitle: 'Rewrite expression')
      ],
    ),
  ];
  List<Lesson> eight_grade_lessonTopics = [
    Lesson(
      title: 'Roots',
      isExpanded: false,
      category: 'math',
      items: [
        LessonItem(subtitle: 'Square roots'),
        LessonItem(subtitle: 'Property #1 of square root'),
        LessonItem(subtitle: 'Property #2 of square root'),
        LessonItem(subtitle: 'Property #3 of square root'),
      ],
    ),
    Lesson(
      title: 'Radicals',
      isExpanded: false,
      category: 'math',
      items: [
        LessonItem(subtitle: 'Compare the radicals'),
        LessonItem(subtitle: 'Perform the radical expressions'),
        LessonItem(subtitle: 'Simplify the radical expressions'),
      ],
    ),
  ];

  Color getRandomColor() {
    final int random = Random().nextInt(Colors.primaries.length);
    final Color color = Colors.primaries[random];
    dev.log('-1');
    return color;
  }

  List<Lesson> foundLessons = [];

  void init() {
    foundLessons = lessonTopics;
    print('init');
  }

  List<Lesson> get lessons => foundLessons;
  String _searchString = "";

  void changeSearchAndFilterString2(String searchString) {
    _searchString = searchString;
    notifyListeners();
  }

  void runFilter(String category) {
    List<Lesson> results = [];
    if (category.isEmpty) {
      results = lessonTopics;
    } else {
      results = lessonTopics
          .where((lesson) =>
              lesson.category.toLowerCase().contains(category.toLowerCase()))
          .toList();
    }
    foundLessons = results;
    notifyListeners();
  }

  void runSearch(String enteredKeyword) {
    List<Lesson> results = [];
    if (enteredKeyword.isEmpty) {
      results = lessonTopics;
    } else {
      results = lessonTopics
          .where((lesson) =>
              lesson.title.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    foundLessons = results;
    notifyListeners();
  }
}

class LessonList extends StatelessWidget {
  final List<Lesson> lessonList;
  LessonList({super.key, required this.lessonList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: lessonList.length,
      itemBuilder: (context, index) {
        final lesson = lessonList[index];
        return Column(
          children: [
            SizedBox(height: 10),
            LessonsWidget(
              lesson: lesson,
              onExpansionChanged: (bool expanded) {
                lesson.isExpanded = expanded;
              },
              titleColor: LessonProvider().getRandomColor(),
            ),
          ],
        );
      },
    );
  }
}

class LessonsWidget extends StatelessWidget {
  final Lesson lesson;
  final ValueChanged<bool> onExpansionChanged;
  final Color titleColor;

  const LessonsWidget({
    super.key,
    required this.lesson,
    required this.onExpansionChanged,
    required this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 187, 187, 187)),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: ExpansionTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundColor: titleColor,
          child: Text(
            lesson.title[0].toUpperCase(),
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        title: SizedBox(
          width: 200,
          child: Text(
            lesson.title,
            style: TextStyle(
                color: titleColor, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        initiallyExpanded: lesson.isExpanded,
        onExpansionChanged: onExpansionChanged,
        children: [
          const Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          ...lesson.items
              .map((item) => ScoreItemWidget(
                    item: item,
                    lesson: lesson,
                  ))
              .toList(),
        ],
      ),
    );
  }
}

class ScoreItemWidget extends StatelessWidget {
  final LessonItem item;
  final Lesson lesson;

  const ScoreItemWidget({super.key, required this.item, required this.lesson});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<TestData?>(
      stream: UserService()
          .getTestDataStream(lesson.category, lesson.title, item.subtitle),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator(
            color: AppColors.main_blue,
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (!snapshot.hasData) {
          return ListTile(
            title: GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.questions,
                  arguments: {
                    'subject': lesson.category,
                    'theme': lesson.title,
                    'testName': item.subtitle,
                    'currentScore': 0,
                    'finished': false,
                  },
                );
              },
              child: Text(item.subtitle),
            ),
            trailing: const Text('0/100'),
          );
        } else {
          final testData = snapshot.data;
          return ListTile(
            title: GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.questions,
                  arguments: {
                    'subject': lesson.category,
                    'theme': lesson.title,
                    'testName': item.subtitle,
                    'currentScore': testData!.points,
                    'finished': testData.points == 100 ? true : false,
                  },
                );
              },
              child: Text(item.subtitle),
            ),
            trailing: testData!.points >= 100
                ? SizedBox(
                    width: 30,
                    height: 30,
                    child: Image.asset('assets/images/medal_908838.png'),
                  )
                : Text('${testData!.points ?? 0}/100'),
          );
        }
      },
    );
  }
}

getValuesHive(String key) async {
  var scoreBox = await Hive.openBox('score');
  return scoreBox.get(key);
}
