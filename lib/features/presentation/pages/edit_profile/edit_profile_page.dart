import 'package:flutter/material.dart';
import 'package:ixl/features/presentation/pages/edit_profile/components/edit_profile_body.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: EditProfileBody(),
    );
  }
}
