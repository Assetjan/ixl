import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ixl/core/colors.dart';
import 'package:ixl/core/common/functions/show_back_dialog.dart';
import 'package:ixl/features/presentation/pages/profile/profile_page.dart';
import 'package:ixl/features/presentation/pages/subjects/subjects_page.dart';
import 'package:ixl/features/presentation/pages/teacher/teacher_page/teacher_page.dart';

class BottomNavBarTeacher extends StatefulWidget {
  const BottomNavBarTeacher({super.key});

  @override
  State<BottomNavBarTeacher> createState() => _BottomNavBarTeacherState();
}

class _BottomNavBarTeacherState extends State<BottomNavBarTeacher> {
  int _currentIndex = 0;

  final tabs = [
    const TeacherPage(),
    const Center(
      child: Text("Progress"),
    ),
    const Center(
      child: Text("Settings"),
    ),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) {
        if (didPop) {
          return;
        }
        ShowDialog().showBackDialog(context);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: tabs[_currentIndex],
        bottomNavigationBar: SizedBox(
          height: 100,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            child: BottomNavigationBar(
              enableFeedback: false,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              backgroundColor: const Color.fromRGBO(9, 52, 86, 1),
              selectedItemColor: const Color.fromRGBO(82, 178, 255, 1),
              unselectedItemColor: Colors.white,
              selectedLabelStyle: const TextStyle(fontSize: 15),
              unselectedLabelStyle: const TextStyle(fontSize: 15),
              currentIndex: _currentIndex,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_2_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
                  label: "Students",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 35,
                  ),
                  label: "Progress",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 35,
                  ),
                  label: "Settings",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 35,
                  ),
                  label: "Profile",
                ),
              ],
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
