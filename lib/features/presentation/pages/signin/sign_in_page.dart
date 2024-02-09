import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ixl/features/presentation/pages/signin/components/body.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Body(),
    );
  }
}
