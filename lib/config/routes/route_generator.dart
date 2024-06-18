import 'package:flutter/material.dart';
import 'package:ixl/config/routes/app_routes.dart';
import 'package:ixl/config/routes/bottom_navigation_bar.dart';
import 'package:ixl/features/presentation/pages/profile/profile_page.dart';
import 'package:ixl/features/presentation/pages/question/components/questions_hive.dart';
import 'package:ixl/features/presentation/pages/question/question_page.dart';
import 'package:ixl/features/presentation/pages/signin/components/auth_page.dart';
import 'package:ixl/features/presentation/pages/signin/sign_in_page.dart';
import 'package:ixl/features/presentation/pages/splashscreen/splash_screen.dart';
import 'package:ixl/features/presentation/pages/teacher/bottom_nav_bar_teacher/bottom_nav_bar_teacher.dart';
import 'package:ixl/features/presentation/pages/teacher/signin_teacher/sign_in_teacher_page.dart';
import 'package:ixl/features/presentation/pages/teacher/signup_teacher/sign_up_teacher_page.dart';
import 'package:ixl/features/presentation/pages/teacher/teacher_page/components/each_student_score.dart';
import 'package:ixl/features/presentation/pages/teacher/teacher_page/teacher_page.dart';

class RouteGenerator {
  static Route<Object?>? generateRoute(RouteSettings settings) {
    final routeName = settings.name;

    switch (routeName) {
      case AppRoutes.signin:
        return MaterialPageRoute(
          builder: (context) {
            return const SignInPage();
            // return MainPage(userCredential: userCredential);
          },
        );

      case AppRoutes.splashscreen:
        return MaterialPageRoute(
          builder: (context) {
            return const SplashScreen();
            // return MainPage(userCredential: userCredential);
          },
        );

      case AppRoutes.profile:
        return MaterialPageRoute(
          builder: (context) {
            return const ProfilePage();
            // return MainPage(userCredential: userCredential);
          },
        );

      case AppRoutes.navigationBar:
        return MaterialPageRoute(
          builder: (context) {
            return const BottomNavigation();
            // return MainPage(userCredential: userCredential);
          },
        );

      case AppRoutes.questions:
        return MaterialPageRoute(
          builder: (context) {
            return QuestionsPage();
            // return MainPage(userCredential: userCredential);
          },
          settings: settings,
        );

      case AppRoutes.questions:
        return MaterialPageRoute(
          builder: (context) {
            return const AuthPage();
            // return MainPage(userCredential: userCredential);
          },
        );

      case AppRoutes.questionsHive:
        return MaterialPageRoute(
          builder: (context) {
            return QuestionsHive();
            // return MainPage(userCredential: userCredential);
          },
        );
      case AppRoutes.signin_teacher:
        return MaterialPageRoute(
          builder: (context) {
            return const SignInTeacherPage();
          },
        );

      case AppRoutes.signup_teacher:
        return MaterialPageRoute(
          builder: (context) {
            return const SignUpTeacherPage();
          },
        );

      // case AppRoutes.teacher_page:
      //   return MaterialPageRoute(
      //     builder: (context) {
      //       return const TeacherPage();
      //     },
      //   );
      case AppRoutes.each_student_score:
        return MaterialPageRoute(
          builder: (context) {
            return const EachStudentScore();
          },
          settings: settings,
        );
      case AppRoutes.review_page:
        return MaterialPageRoute(
          builder: (context) {
            return const EachStudentScore();
          },
          settings: settings,
        );
      case AppRoutes.bottom_nav_bar_teacher:
        return MaterialPageRoute(
          builder: (context) {
            return const BottomNavBarTeacher();
          },
          settings: settings,
        );

      default:
        return _errorRoute();
    }
  }

  static MaterialPageRoute buildRoute(Widget child,
      {required RouteSettings settings}) {
    return MaterialPageRoute(
        settings: settings, builder: (BuildContext context) => child);
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text(
            'ERROR!!',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: const Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 450.0,
                  width: 450.0,
                  // child: Lottie.asset('assets/lottie/error.json'),
                ),
                Text(
                  'Seems the route you\'ve navigated to doesn\'t exist!!',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
