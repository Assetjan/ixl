import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ixl/config/routes/app_routes.dart';
import 'package:ixl/core/colors.dart';
import 'package:ixl/core/common/custom_svg.dart';
import 'package:ixl/core/services/delete_student_data.dart';
import 'package:ixl/core/services/get_points_firestore.dart';
import 'package:ixl/features/presentation/pages/profile/profile_page.dart';
import 'package:ixl/features/presentation/pages/subjects/components/lesson_provider.dart';

import 'package:ixl/features/presentation/pages/subjects/models/lesson.dart';
import 'package:ixl/features/presentation/pages/teacher/teacher_page/components/teacher_page_body.dart';
import 'package:provider/provider.dart';

class EachStudentScore extends StatelessWidget {
  const EachStudentScore({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as List<dynamic>;
    final email = args[0];
    final password = args[1];
    final student = args[2];
    LessonProvider lesProvider = Provider.of<LessonProvider>(context);
    lesProvider.runFilter("math");

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: Colors.white,
              ),
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromRGBO(9, 52, 86, 1),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: AppColors.main_blue,
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                EachStudentTitle(
                    student: student,
                    studentEmail: email,
                    studentPassword: password),
                SizedBox(height: 10),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Consumer<LessonProvider>(builder: (context, data, child) {
                return data.lessons.isNotEmpty
                    ? CustomLessonList(args: email, lessonList: data.lessons)
                    : const Text(
                        'No results found',
                        style: TextStyle(fontSize: 24),
                      );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class EachStudentTitle extends StatelessWidget {
  final Map<String, dynamic> student;
  final String studentEmail;
  final String studentPassword;
  const EachStudentTitle(
      {super.key,
      required this.student,
      required this.studentEmail,
      required this.studentPassword});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: const Color.fromARGB(136, 33, 33, 33),
      splashColor: const Color.fromARGB(136, 33, 33, 33),
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.each_student_score,
            arguments: [studentEmail, studentPassword, student]);
      },
      child: Row(
        children: [
          SizedBox(
            width: 120,
            height: 120,
            child:
                CustomSvgImage(iconPath: 'assets/images/each_student_icon.svg'),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                student['name'].toString().toUpperCase(),
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Username: ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    student['username'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Password: ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    studentPassword,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Class: ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    student['class'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomLessonList extends StatelessWidget {
  final List<Lesson> lessonList;
  final args;
  const CustomLessonList(
      {super.key, required this.args, required this.lessonList});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: lessonList.map((lesson) {
        return CustomLessonsWidget(
          args: args,
          lesson: lesson,
          onExpansionChanged: (bool expanded) {
            lesson.isExpanded = expanded;
          },
          titleColor: LessonProvider().getRandomColor(),
        );
      }).toList(),
    );
  }
}

// void _showDialog(BuildContext context, String email, String password) {
//   showDialog<void>(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: const Text('Are you sure?'),
//         content: const Text(
//           'Are you sure you want to delete this student?',
//         ),
//         actions: <Widget>[
//           GestureDetector(
//             onTap: () {
//               Navigator.pop(context);
//             },
//             child: Container(
//               width: double.infinity,
//               height: 50,
//               padding: const EdgeInsets.all(5),
//               decoration: BoxDecoration(
//                 color: AppColors.main_blue,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: const Center(
//                 child: Text(
//                   "No",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(height: 10),
//           GestureDetector(
//             onTap: () {
//               // DeleteStudent().deleteAccount(context, email, password);
//               Navigator.pushReplacementNamed(context, AppRoutes.teacher_page);
//             },
//             child: Container(
//               width: double.infinity,
//               height: 50,
//               padding: const EdgeInsets.all(5),
//               decoration: BoxDecoration(
//                 color: AppColors.main_blue,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: const Center(
//                 child: Text(
//                   "Yes",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       );
//     },
//   );
// }

class CustomLessonsWidget extends StatelessWidget {
  final Lesson lesson;
  final ValueChanged<bool> onExpansionChanged;
  final Color titleColor;
  final args;

  const CustomLessonsWidget({
    super.key,
    required this.args,
    required this.lesson,
    required this.onExpansionChanged,
    required this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    Color randomColor = LessonProvider().getRandomColor();

    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 187, 187, 187)),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: ExpansionTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundColor: randomColor,
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
                color: randomColor, fontSize: 18, fontWeight: FontWeight.bold),
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
              .map((item) => CustomScoreItemWidget(
                    args: args,
                    item: item,
                    lesson: lesson,
                  ))
              .toList(),
        ],
      ),
    );
  }
}

class CustomScoreItemWidget extends StatelessWidget {
  final LessonItem item;
  final Lesson lesson;
  final args;
  const CustomScoreItemWidget(
      {super.key,
      required this.args,
      required this.item,
      required this.lesson});

  @override
  Widget build(BuildContext context) {
    final email = args;
    return StreamBuilder<TestData?>(
      stream: _customGetTestDataStream(
          email, lesson.category, lesson.title, item.subtitle),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator(
            color: AppColors.main_blue,
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          final testData = snapshot.data;
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: SizedBox(
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_month,
                        size: 18,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Last passed test:',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 5),
                      StreamBuilder<DocumentSnapshot?>(
                        stream: customGetTestDataStream(
                            email, 'math', lesson.title, item.subtitle),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const CircularProgressIndicator(
                                color: AppColors.main_blue);
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else if (!snapshot.hasData) {
                            return const Text('0',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal));
                          } else {
                            final testData =
                                snapshot.data?.data() as Map<String, dynamic>?;
                            final dateDifference = DateTime.now()
                                .difference(testData!['lastPassed'].toDate())
                                .inMilliseconds;
                            final time =
                                formatMillisecondsWithHours(dateDifference);
                            return Text(
                                '${time[0]} hours ${time[1]} minutes ago',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ));
                          }
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(
                        Icons.timer_outlined,
                        size: 18,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Time spent on this test:',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 5),
                      StreamBuilder<DocumentSnapshot?>(
                        stream: customGetTestDataStream(
                            email, 'math', lesson.title, item.subtitle),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const CircularProgressIndicator(
                                color: AppColors.main_blue);
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else if (!snapshot.hasData) {
                            return const Text('0',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal));
                          } else {
                            final testData =
                                snapshot.data?.data() as Map<String, dynamic>?;
                            final time = formatMillisecondsWithHours(
                                testData!['timeSpendAll']);
                            return Text(
                                '${time[0]} hours ${time[1]} minutes ${time[2]} seconds',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ));
                          }
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(
                        Icons.question_mark_outlined,
                        size: 18,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Questions answered:',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 5),
                      StreamBuilder<DocumentSnapshot?>(
                        stream: customGetTestDataStream(
                            email, 'math', lesson.title, item.subtitle),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const CircularProgressIndicator(
                                color: AppColors.main_blue);
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else if (!snapshot.hasData) {
                            return const Text('0',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal));
                          } else {
                            final testData =
                                snapshot.data?.data() as Map<String, dynamic>?;
                            return Text('${testData!['passedQuestions']}',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ));
                          }
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, top: 20),
                    child: Row(
                      children: [
                        Text(
                          item.subtitle,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Text(
                          '${testData?.points ?? 0}/100',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }
      },
    );
  }

// ListTile(
//             subtitle: Text(item.subtitle),
//             trailing: Text('${testData?.points ?? 0}/100'),
//             titleAlignment: ListTileTitleAlignment.bottom,
  Stream<TestData?> _customGetTestDataStream(
      String userEmail, String subjectId, String themeId, String testId) {
    return FirebaseFirestore.instance
        .collection('Users')
        .doc(userEmail)
        .collection('Subjects')
        .doc(subjectId)
        .collection('Themes')
        .doc(themeId)
        .collection('Tests')
        .doc(testId)
        .snapshots()
        .map((documentSnapshot) {
      if (documentSnapshot.exists) {
        return TestData.fromFirestore(documentSnapshot);
      } else {
        print('Document does not exist');
        return null;
      }
    }).handleError((error) {
      print('Error fetching test data: $error');
      return null;
    });
  }
}
