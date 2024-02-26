import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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