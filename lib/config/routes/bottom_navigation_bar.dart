import 'package:flutter/material.dart';
import 'package:ixl/features/presentation/pages/profile/profile_page.dart';
import 'package:ixl/features/presentation/pages/subjects/subjects_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _currentIndex = 0;

  final tabs = [
    SubjectsPage(),
    const Center(child: Text("Progress"),),
    const Center(child: Text("Settings"),),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: tabs[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: 100,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),),
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
                icon: Icon(Icons.book, color: Colors.white, size: 35,),
                label: "Subject",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star, color: Colors.white, size: 35,),
                label: "Progress",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings, color: Colors.white, size: 35,),
                label: "Settings",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.white, size: 35,),
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
    );
  }
}