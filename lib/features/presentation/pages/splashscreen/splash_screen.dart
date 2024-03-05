import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ixl/features/presentation/pages/signin/sign_in_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => SignInPage(),
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
      backgroundColor: const Color.fromRGBO(9, 52, 86, 1),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Image.asset(
                "assets/images/splashscreen_logo.png",
              ),
              const SizedBox(height: 10),
              const Text("MVP", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
          ]
          ),
      ),
    );
  }
}