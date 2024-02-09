import 'package:flutter/material.dart';
import 'package:ixl/config/routes/app_routes.dart';
import 'package:ixl/features/presentation/pages/signin/sign_in_page.dart';
import 'package:ixl/features/presentation/pages/splashscreen/splash_screen.dart';

class RouteGenerator {
  static Route<Object?>? generateRoute(RouteSettings settings) {
    final routeName = settings.name;

    switch (routeName) {
      case AppRoutes.signin:
        return MaterialPageRoute(
          builder: (context) {
            return SignInPage();
            // return MainPage(userCredential: userCredential);
          },
        );

      case AppRoutes.splashscreen:
        return MaterialPageRoute(
          builder: (context) {
            return SplashScreen();
            // return MainPage(userCredential: userCredential);
          },
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
