import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ixl/config/routes/app_routes.dart';
import 'package:ixl/core/colors.dart';
import 'package:ixl/core/common/custom_button.dart';
import 'package:ixl/features/presentation/pages/review_page/review_backround.dart';

class ReviewPage extends StatelessWidget {
  final String title;
  final String timer;
  final String correctAnswer;
  const ReviewPage({
    super.key,
    required this.title,
    required this.correctAnswer,
    required this.timer,
  });

  @override
  Widget build(BuildContext context) {
    return ReviewBackround(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 24),
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        flex: 3,
                        child: ColoredBox(
                          color: Colors.white,
                          child: SizedBox(
                            height: 2,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: SvgPicture.asset(
                          'assets/images/svg (3).svg',
                          height: 32,
                          width: 32,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: ColoredBox(
                          color: Colors.white,
                          child: SizedBox(
                            height: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Mastered!',
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _circleData('100', 'SmartScore\n'),
                      _circleData(timer, 'Time\nSpent'),
                      _circleData(correctAnswer, 'Questions\nCorrect'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: CustomButton(
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, AppRoutes.navigationBar);
                },
                text: 'Get back'),
          ),
        ],
      ),
    );
  }
}

Widget _circleData(String inside, String outside) {
  return Column(
    children: [
      Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            inside,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ),
      const SizedBox(height: 8),
      Text(
        outside,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    ],
  );
}
