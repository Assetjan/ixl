import 'package:flutter/material.dart';

class QuestionsBackground extends StatelessWidget {
  final Widget child;
  const QuestionsBackground({
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
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            color: Color.fromRGBO(9, 52, 86, 1),
            height: size.height * 0.28,                
          ),
            child,
        ],
      ),
    );
  }
}