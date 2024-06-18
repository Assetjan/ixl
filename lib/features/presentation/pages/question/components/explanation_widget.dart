import 'package:flutter/material.dart';

class ExplanationWidget extends StatelessWidget {
  const ExplanationWidget(
      {super.key, required this.correctAnswer, required this.explanation});
  final String correctAnswer;
  final String explanation;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.red.withOpacity(0.2),
          ),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 20,
                color: Colors.red,
              ),
              SizedBox(width: 10),
              const Text(
                'Incorrect',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Correct answer',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Text(
              correctAnswer,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: Colors.green.withOpacity(0.2),
          ),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 20,
                color: Colors.green,
              ),
              SizedBox(width: 10),
              const Text(
                'Review',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: SingleChildScrollView(
            child: Text(
              explanation,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}
