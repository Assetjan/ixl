import 'package:flutter/material.dart';
import 'package:ixl/features/presentation/pages/question/components/questions_hive.dart';

class SubjectsBackground extends StatelessWidget {
  final Widget child;
  const SubjectsBackground({
    super.key,
    required this.child,
  });


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              color: const Color.fromRGBO(9, 52, 86, 1),
              height: size.height * 0.28,
            ),
              child,
          ],
        ),
      ),
    );
  }
}