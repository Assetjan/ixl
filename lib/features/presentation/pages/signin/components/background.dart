import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    super.key,
    required this.child,
  });


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            child: Image.asset(
              "assets/images/ellipse1.png",
              width: size.width,
              fit: BoxFit.cover
            )),
            Positioned(
            top: 0,
            child: Image.asset(
              "assets/images/ellipse2.png",
              width: size.width,
              fit: BoxFit.cover
            )),
            Positioned(
            top: 0,
            child: Image.asset(
              "assets/images/ellipse3.png",
              width: size.width,
              fit: BoxFit.cover
            )),
            const Positioned(
            top: 100,
            child: Text("Sign in", style: TextStyle(color: Colors.white, fontSize: 35),)),
            Positioned(
            top: 190,
            child: Image.asset(
              "assets/images/bil_logo.png",
              width: size.width * 0.4,
            )),
            child,
        ],
      ),
    );
  }
}