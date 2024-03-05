import 'package:flutter/material.dart';
import 'package:ixl/features/presentation/pages/signin/components/sign_in_body.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: SignInBody(),
    );
  }
}
