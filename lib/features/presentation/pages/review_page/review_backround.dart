import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReviewBackround extends StatelessWidget {
  final Widget child;
  const ReviewBackround({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned.fill(
              child: SvgPicture.asset(
                'assets/images/svg (2).svg',
                fit: BoxFit.cover,
              ),
            ),
            child
          ],
        ),
      ),
    );
  }
}
