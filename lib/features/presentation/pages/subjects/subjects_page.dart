import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ixl/core/colors.dart';
import 'package:ixl/features/presentation/pages/subjects/components/subjects_body.dart';

class SubjectsPage extends StatelessWidget {
  const SubjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: SubjectsBody(),
    );
  }
}
