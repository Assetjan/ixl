import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ixl/features/presentation/pages/profile/profile_page.dart';
import 'package:ixl/features/presentation/pages/signin/sign_in_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const ProfilePage();
          } else {
            return const SignInPage();
          }
        },
        ),
    );
  }
}