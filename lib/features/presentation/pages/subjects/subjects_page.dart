import 'package:flutter/material.dart';
import 'package:ixl/features/presentation/pages/subjects/components/subjects_body.dart';

class SubjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SubjectsBody(),
    );
  }
}
