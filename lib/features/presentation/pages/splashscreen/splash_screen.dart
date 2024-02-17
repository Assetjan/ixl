import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(9, 52, 86, 1),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Image.asset(
                "assets/images/splashscreen_logo.png",
              ),
              SizedBox(height: 10),
              Text("MVP", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
          ]
          ),
      ),
    );
  }
}