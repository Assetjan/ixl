import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ixl/core/services/get_points_firestore.dart';

class DeleteStudent {
  Future<void> deleteAccount(
    BuildContext context,
    String email,
    String password,
    String classes,
  ) async {
    final _teacherEmail = FirebaseAuth.instance.currentUser!.email;
    FirebaseApp secondaryApp = await Firebase.initializeApp(
      name: 'SecondaryApp',
      options: Firebase.app().options,
    );

    try {
      UserCredential userCredential =
          await FirebaseAuth.instanceFor(app: secondaryApp)
              .signInWithEmailAndPassword(email: email, password: password);

      User? user = userCredential.user;

      if (user != null) {
        await user.delete();
        FirebaseFirestore.instance
            .collection('Teachers')
            .doc(_teacherEmail)
            .collection('Students')
            .doc(email)
            .delete();
        try {
          final userScore = await FirebaseFirestore.instance
              .collection('Users')
              .doc(email)
              .get();
          if (userScore.exists) {
            log('Document data: ${userScore.data()}');
            FirebaseFirestore.instance.collection('Users').doc(email).delete();
          } else {
            log('No such document! ${userScore.data()}');
          }
        } catch (e) {
          log('Error fetching document: $e');
        }

        showSuccessMessage(context, 'Account successfully deleted.');
      }
    } on FirebaseAuthException catch (e) {
      showErrorMessage(context, 'An error occurred: ${e.code}');
      log('FirebaseAuthException: ${e.code}, ${e.message}');
    } finally {
      await secondaryApp.delete();
    }
  }

  void showErrorMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
      ),
    );
  }

  void showSuccessMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green,
      ),
    );
  }
}
