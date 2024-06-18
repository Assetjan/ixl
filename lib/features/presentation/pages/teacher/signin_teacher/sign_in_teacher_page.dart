import 'package:flutter/material.dart';
import 'package:ixl/core/common/functions/show_back_dialog.dart';
import 'package:ixl/features/presentation/pages/teacher/signin_teacher/components/sign_in_teacher_body.dart';

class SignInTeacherPage extends StatelessWidget {
  const SignInTeacherPage({super.key});

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
        body: SignInTeacherBody(),
      ),
    );
  }
}
