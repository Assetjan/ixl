import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ixl/config/routes/app_routes.dart';
import 'package:ixl/features/presentation/pages/question/components/question_provider.dart';
import 'package:ixl/features/presentation/pages/question/components/questions_body.dart';
import 'package:provider/provider.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key});

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    if (args == null ||
        !args.containsKey('subject') ||
        !args.containsKey('theme') ||
        !args.containsKey('testName') ||
        !args.containsKey('currentScore')) {
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.navigationBar);
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
        ),
        body: const Center(
          child: Text('Missing or incorrect arguments'),
        ),
      );
    }

    final subject = args['subject']!;
    final theme = args['theme']!;
    final testName = args['testName']!;
    final currentScore = args['currentScore'];
    final finished = args['finished'];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: QuestionsBody(
        subject: subject!,
        theme: theme!,
        testName: testName!,
        currenScore: currentScore!,
        finished: finished,
      ),
    );
  }
}
