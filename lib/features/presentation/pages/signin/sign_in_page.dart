import 'package:flutter/material.dart';
import 'package:ixl/core/common/functions/show_back_dialog.dart';
import 'package:ixl/features/presentation/pages/signin/components/sign_in_body.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
        body: SignInBody(),
      ),
    );
  }
}
