import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ixl/config/routes/app_routes.dart';
import 'package:ixl/core/colors.dart';
import 'package:ixl/core/common/custom_button.dart';
import 'package:ixl/core/common/custom_svg.dart';
import 'package:ixl/core/services/delete_student_data.dart';
import 'package:ixl/core/services/get_points_firestore.dart';
import 'package:ixl/features/presentation/pages/teacher/teacher_page/components/add_student_page.dart';
import 'package:ixl/features/presentation/pages/teacher/teacher_page/components/custom_dropdown.dart';
import 'package:ixl/features/presentation/pages/teacher/teacher_page/components/update_student_page.dart';

class TeacherPageBody extends StatefulWidget {
  const TeacherPageBody({super.key});

  @override
  State<TeacherPageBody> createState() => _TeacherPageBodyState();
}

class _TeacherPageBodyState extends State<TeacherPageBody> {
  final List<String> themes = ['Powers', 'Linear Equations'];
  bool _filterShow = false;
  final Map<String, List<String>> questions = {
    'Powers': ['Power operations', 'Exponent rules'],
    'Linear Equations': ['Solving equations', 'Graphing equations']
  };
  List<String> classes = [
    'All classes',
  ];
  List<String> date = [
    'Last passed',
    'Today',
    'Yesterday',
    '1 week ago',
    '1 month ago',
  ];
  String? selectedTheme;
  String? selectedQuestion;
  String? selectedGrade;
  String? selectedClass;
  String? selectedDate;

  @override
  void initState() {
    super.initState();
    selectedTheme = themes[0];
    selectedQuestion = questions[selectedTheme]?.first;
    selectedClass = classes.first;
    selectedDate = date.first;
  }

  void _onThemeChanged(String? newTheme) {
    if (newTheme == null || newTheme == selectedTheme) return;
    setState(() {
      selectedTheme = newTheme;
      selectedQuestion = questions[selectedTheme]?.first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AddStudentPage(),
      appBar: AppBar(
        backgroundColor: AppColors.main_blue,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.profile);
          },
          icon: const Icon(Icons.person_2_outlined, color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: AppColors.main_blue,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Column(
              children: [
                // Row(
                //   children: [
                //     CustomDropdown(
                //       width: 120,
                //       menuWidth: 200,
                //       items: themes,
                //       selectedValue: selectedTheme,
                //       onChanged: _onThemeChanged,
                //     ),
                //     const SizedBox(width: 8),
                //     CustomDropdown(
                //       width: 120,
                //       menuWidth: 200,
                //       items: questions[selectedTheme]!,
                //       selectedValue: selectedQuestion,
                //       onChanged: (value) =>
                //           setState(() => selectedQuestion = value),
                //     ),
                //     const Spacer(),
                //     CustomDropdown(
                //       width: 120,
                //       items: grades,
                //       selectedValue: selectedGrade,
                //       onChanged: (value) =>
                //           setState(() => selectedGrade = value),
                //       color: Colors.transparent,
                //       elevation: 0,
                //       textColor: Colors.white,
                //       borderColor: Colors.transparent,
                //       menuBackgroundColor: AppColors.main_blue,
                //       menuItemColor: Colors.white,
                //     ),
                //   ],
                // ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: 42,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.main_blue, width: 2),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: AppColors.main_blue),
                            ),
                            hintText: "Search",
                            hintStyle: const TextStyle(fontSize: 16),
                            prefixIcon: const Icon(Icons.search),
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 15),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: CustomButton(
                        height: 42,
                        onTap: () {},
                        text: 'Search',
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                      ),
                    ),
                    SizedBox(width: 10),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _filterShow = !_filterShow;
                          });
                        },
                        icon: Icon(
                          _filterShow
                              ? Icons.filter_alt_off_rounded
                              : Icons.filter_alt_rounded,
                          size: 30,
                          color: Colors.white,
                        ))
                  ],
                ),
                _filterShow
                    ? Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: StreamBuilder<QuerySnapshot>(
                                stream: UserService().getClassesStream(),
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    return const Center(
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                      ),
                                    );
                                  }
                                  if (snapshot.hasError) {
                                    return Text("Error: ${snapshot.error}");
                                  }

                                  var classSet = <String>{'All classes'};

                                  snapshot.data!.docs.forEach((doc) {
                                    var className = doc['class'];
                                    if (className != null) {
                                      classSet.add(className);
                                    }
                                  });

                                  var classes = classSet.toList();
                                  return CustomDropdown(
                                    height: 42,
                                    color: Colors.white,
                                    items: classes,
                                    textColor: Colors.black,
                                    menuItemColor: Colors.black,
                                    menuBackgroundColor: Colors.white,
                                    selectedValue: selectedClass,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedClass = value;
                                      });
                                    },
                                  );
                                },
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                                flex: 1,
                                child: CustomDropdown(
                                  height: 42,
                                  items: date,
                                  selectedValue: selectedDate,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedDate = value;
                                    });
                                  },
                                )),
                          ],
                        ),
                      )
                    : SizedBox(),
                SizedBox(height: 10),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: const Text(
              "Students",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12, right: 12, left: 12),
              child: StreamBuilder<QuerySnapshot>(
                stream: UserService().getStudentsStream(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child:
                          CircularProgressIndicator(color: AppColors.main_blue),
                    );
                  }
                  if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return const Center(child: Text("No students found."));
                  }
                  Future<List<Map<String, dynamic>>>
                      fetchStudentsWithPoints() async {
                    var allStudents = snapshot.data!.docs
                        .map((doc) => doc.data() as Map<String, dynamic>)
                        .toList();

                    for (var student in allStudents) {
                      var pointsData = await FirebaseFirestore.instance
                          .collection('Users')
                          .doc(student['email'])
                          .collection('Subjects')
                          .doc('math')
                          .collection('Themes')
                          .doc(selectedTheme)
                          .collection('Tests')
                          .doc(selectedQuestion)
                          .get();
                      student['points'] = pointsData.exists
                          ? pointsData.data()!['points'] as int
                          : 0;
                    }
                    return allStudents;
                  }

                  return FutureBuilder<List<Map<String, dynamic>>>(
                    future: fetchStudentsWithPoints(),
                    builder: (context, pointsSnapshot) {
                      if (pointsSnapshot.connectionState ==
                          ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(
                              color: AppColors.main_blue),
                        );
                      }
                      if (!pointsSnapshot.hasData) {
                        return const Center(
                            child: Text("Error loading points."));
                      }
                      return FutureBuilder<List<Map<String, dynamic>>>(
                        future:
                            _filterByDate(pointsSnapshot.data!, selectedDate!),
                        builder: (context, filteredSnapshot) {
                          if (filteredSnapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                              child: CircularProgressIndicator(
                                  color: AppColors.main_blue),
                            );
                          }
                          if (!filteredSnapshot.hasData ||
                              filteredSnapshot.data!.isEmpty) {
                            return Center(
                                child: Text(
                                    "No students match the selected filters."));
                          }
                          var studentsFiltered = _filterShow
                              ? filteredSnapshot.data!
                              : pointsSnapshot.data!;
                          return ListView.builder(
                            itemCount: selectedClass == 'All classes'
                                ? studentsFiltered.length
                                : studentsFiltered
                                    .where((document) =>
                                        document['class'] == selectedClass)
                                    .toList()
                                    .length,
                            itemBuilder: (context, index) {
                              var studentData = selectedClass == 'All classes'
                                  ? studentsFiltered[index]
                                  : studentsFiltered
                                      .where((document) =>
                                          document['class'] == selectedClass)
                                      .toList()[index];
                              return StudentTile(
                                student: studentData,
                                selectedQuestion: selectedQuestion!,
                                selectedTheme: selectedTheme!,
                              );
                            },
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<List<Map<String, dynamic>>> _filterByDate(
    List<Map<String, dynamic>> studentsFiltered, String selectedDate) async {
  List<Map<String, dynamic>> filteredByDateStudent = [];

  if (selectedDate == 'Last passed') {
    return studentsFiltered;
  } else {
    for (int i = 0; i < studentsFiltered.length; i++) {
      try {
        log(studentsFiltered[i]['email']);
        DocumentSnapshot snapshot = await FirebaseFirestore.instance
            .collection('Users')
            .doc(studentsFiltered[i]['email'])
            .get();
        var userData = snapshot.data() as Map<String, dynamic>;
        log(userData.toString());
        if (userData == null || !userData.containsKey('lastPassed')) {
          continue;
        }

        final dateDifference = DateTime.now()
            .difference(userData['lastPassed'].toDate())
            .inMilliseconds;
        if ((selectedDate == 'Today' && dateDifference < 86400000) ||
            (selectedDate == 'Yesterday' &&
                dateDifference >= 86400000 &&
                dateDifference < 172800000) ||
            (selectedDate == '1 week ago' && dateDifference < 604800000) ||
            (selectedDate == '1 month ago' && dateDifference < 2592000000)) {
          filteredByDateStudent.add(studentsFiltered[i]);
        }
      } catch (e) {
        print('Error reading document: $e');
      }
    }
  }
  return filteredByDateStudent;
}

class StudentTile extends StatelessWidget {
  final Map<String, dynamic> student;
  final String selectedTheme;
  final String selectedQuestion;
  const StudentTile(
      {Key? key,
      required this.student,
      required this.selectedTheme,
      required this.selectedQuestion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Material(
        elevation: 6,
        borderRadius: BorderRadius.circular(5.0),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Column(
            children: [
              // StudentDataRow(student: student, titles: true),
              // const SizedBox(height: 5),
              // StudentDataRow(student: student),
              StudentTitle(
                student: student,
                studentEmail: student['email'],
                studentPassword: student['password'],
              ),
              const SizedBox(height: 14),
              StudentAdditionalData(
                studentEmail: student['email'],
                studentPassword: student['password'],
                selectedQuestion: selectedQuestion,
                selectedTheme: selectedTheme,
                classes: student['class'],
              ),
              const SizedBox(height: 5),
              StudentResultRow(
                studentEmail: student['email'],
                studentPassword: student['password'],
                selectedQuestion: selectedQuestion,
                selectedTheme: selectedTheme,
                classes: student['class'],
                student: student,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class StudentDataRow extends StatelessWidget {
//   final Map<String, dynamic> student;
//   final bool titles;

//   const StudentDataRow({Key? key, required this.student, this.titles = false})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     List<String> fields = ['name', 'class', 'username', 'password'];
//     List<String> labels = ['Name', 'Class', 'Username', 'Password'];

//     return Row(
//       children: List.generate(fields.length, (index) {
//         return Expanded(
//           flex: (index == 0 ? 3 : 2),
//           child: Text(
//             titles ? labels[index] : (student[fields[index]] ?? 'N/A'),
//             style: TextStyle(
//               fontSize: titles ? 14 : 10,
//               fontWeight: titles ? FontWeight.bold : FontWeight.normal,
//             ),
//           ),
//         );
//       }),
//     );
//   }
// }

class StudentTitle extends StatelessWidget {
  final Map<String, dynamic> student;
  final String studentEmail;
  final String studentPassword;
  const StudentTitle(
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
            width: 60,
            height: 60,
            child: CustomSvgImage(iconPath: 'assets/images/student_icon.svg'),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                student['class'],
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                student['name'],
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class StudentResultRow extends StatelessWidget {
  final Map<String, dynamic> student;
  final String studentEmail;
  final String studentPassword;
  final String selectedTheme;
  final String selectedQuestion;
  final String classes;
  const StudentResultRow({
    Key? key,
    required this.studentEmail,
    required this.studentPassword,
    required this.selectedTheme,
    required this.selectedQuestion,
    required this.classes,
    required this.student,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        UpdateStudentPage(email: studentEmail, password: studentPassword),
        const SizedBox(width: 7),
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.each_student_score,
                  arguments: [studentEmail, studentPassword, student]);
            },
            child: const Icon(Icons.remove_red_eye, size: 18)),
        const SizedBox(width: 7),
        GestureDetector(
          onTap: () {
            _showDialog(context, studentEmail, studentPassword, classes);
          },
          child: const Icon(Icons.delete, color: Colors.red, size: 18),
        ),
      ],
    );
  }
}

class StudentAdditionalData extends StatelessWidget {
  final String studentEmail;
  final String studentPassword;
  final String selectedTheme;
  final String selectedQuestion;
  final String classes;
  const StudentAdditionalData({
    Key? key,
    required this.studentEmail,
    required this.studentPassword,
    required this.selectedTheme,
    required this.selectedQuestion,
    required this.classes,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4),
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
                stream: customGetUserDataStream(
                    studentEmail, 'math', selectedTheme, selectedQuestion),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator(
                        color: AppColors.main_blue);
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (!snapshot.hasData) {
                    return const Text('0',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal));
                  } else {
                    final testData =
                        snapshot.data?.data() as Map<String, dynamic>?;
                    final dateDifference = DateTime.now()
                        .difference(testData!['lastPassed'].toDate())
                        .inMilliseconds;
                    final time = formatMillisecondsWithHours(dateDifference);
                    return Text('${time[0]} hours ${time[1]} minutes ago',
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
                'Time spent:',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 5),
              StreamBuilder<DocumentSnapshot?>(
                stream: customGetUserDataStream(
                    studentEmail, 'math', selectedTheme, selectedQuestion),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator(
                        color: AppColors.main_blue);
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (!snapshot.hasData) {
                    return const Text('0',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal));
                  } else {
                    final testData =
                        snapshot.data?.data() as Map<String, dynamic>?;
                    final time =
                        formatMillisecondsWithHours(testData!['timeSpendAll']);
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
                stream: customGetUserDataStream(
                    studentEmail, 'math', selectedTheme, selectedQuestion),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator(
                        color: AppColors.main_blue);
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (!snapshot.hasData) {
                    return const Text('0',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal));
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
        ],
      ),
    );
  }
}

String formatMilliseconds(int millisecond) {
  int seconds = (millisecond / 1000).floor();
  int minutes = (seconds / 60).floor();
  seconds = seconds % 60;

  String minutesStr = minutes.toString().padLeft(2, '0');
  String secondsStr = seconds.toString().padLeft(2, '0');

  return "$minutesStr:$secondsStr";
}

List<String> formatMillisecondsWithHours(int milliseconds) {
  int seconds = (milliseconds / 1000).floor();
  int minutes = (seconds / 60).floor();
  int hours = (minutes / 60).floor();

  seconds = seconds % 60;
  minutes = minutes % 60;

  return [hours.toString(), minutes.toString(), seconds.toString()];
}

Stream<DocumentSnapshot?> customGetTestDataStream(
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
      return documentSnapshot;
    } else {
      print('Document does not exist');
      return null;
    }
  }).handleError((error) {
    print('Error fetching test data: $error');
    return null;
  });
}

Stream<DocumentSnapshot?> customGetUserDataStream(
    String userEmail, String subjectId, String themeId, String testId) {
  return FirebaseFirestore.instance
      .collection('Users')
      .doc(userEmail)
      .snapshots()
      .map((documentSnapshot) {
    if (documentSnapshot.exists) {
      return documentSnapshot;
    } else {
      print('Document does not exist');
      return null;
    }
  }).handleError((error) {
    print('Error fetching test data: $error');
    return null;
  });
}

Color getPointsColor(int points) {
  if (points <= 100 && points > 80) {
    return Colors.green;
  } else if (points <= 80 && points > 50) {
    return Colors.orange;
  } else if (points <= 50) {
    return Colors.red;
  } else {
    return Colors.black;
  }
}

void _showDialog(
    BuildContext context, String email, String password, String classes) {
  showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text(
          'Are you sure you want to delete this student?',
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: double.infinity,
              height: 50,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: AppColors.main_blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  "No",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              DeleteStudent().deleteAccount(context, email, password, classes);
              Navigator.pop(context);
            },
            child: Container(
              width: double.infinity,
              height: 50,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: AppColors.main_blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  "Yes",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
}
