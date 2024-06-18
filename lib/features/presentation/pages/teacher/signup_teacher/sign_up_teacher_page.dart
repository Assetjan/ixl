import 'package:flutter/material.dart';
import 'package:ixl/core/common/functions/show_back_dialog.dart';
import 'package:ixl/features/presentation/pages/teacher/signup_teacher/components/sign_up_teacher_body.dart';

class SignUpTeacherPage extends StatelessWidget {
  const SignUpTeacherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) {
        if (didPop) {
          return;
        }
        ShowDialog().showBackDialog(context);
      },
      child: const Scaffold(
        resizeToAvoidBottomInset: true,
        body: SignUpTeacherBody(),
      ),
    );
  }
}
