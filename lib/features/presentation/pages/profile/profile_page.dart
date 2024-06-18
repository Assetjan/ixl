import 'package:flutter/material.dart';
import 'package:ixl/features/presentation/pages/profile/components/profile_body.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: const ProfileBody(),
    );
  }
}
