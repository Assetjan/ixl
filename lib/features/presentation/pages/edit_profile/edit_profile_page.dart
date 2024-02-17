import 'package:flutter/material.dart';
import 'package:ixl/features/presentation/pages/edit_profile/components/body.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: EditProfileBody(),
    );
  }
}
