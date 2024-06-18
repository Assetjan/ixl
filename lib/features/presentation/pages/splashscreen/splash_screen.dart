import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ixl/config/routes/bottom_navigation_bar.dart';
import 'package:ixl/core/colors.dart';
import 'package:ixl/features/presentation/pages/signin/sign_in_page.dart';
import 'package:ixl/features/presentation/pages/teacher/bottom_nav_bar_teacher/bottom_nav_bar_teacher.dart';
import 'package:ixl/features/presentation/pages/teacher/teacher_page/teacher_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => FirebaseAuth.instance.currentUser == null
            ? const SignInPage()
            : FirebaseAuth.instance.currentUser!.photoURL == 'student'
                ? const BottomNavigation()
                : const BottomNavBarTeacher(),
      ));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.main_blue,
      body: SizedBox(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            "assets/images/splashscreen_logo.png",
          ),
          const SizedBox(height: 10),
          const Text(
            "MVP",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }
}
