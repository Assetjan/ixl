import 'package:flutter/material.dart';
import 'package:ixl/features/presentation/pages/question/components/questions_body.dart';

class QuestionsPage extends StatelessWidget {
  const QuestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: QuestionsBody(),
    );
  }
}