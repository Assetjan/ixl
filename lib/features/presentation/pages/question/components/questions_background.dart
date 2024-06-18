import 'package:flutter/material.dart';
import 'package:ixl/core/colors.dart';

class QuestionsBackground extends StatelessWidget {
  final Widget child;
  const QuestionsBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            color: AppColors.main_blue,
            height: size.height * 0.28,
          ),
          child,
        ],
      ),
    );
  }
}
