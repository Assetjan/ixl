import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ixl/core/services/get_points_firestore.dart';

class AddUser {
  final String subjectId;
  final String themeId;
  final String testId;
  final int points;

  AddUser(this.subjectId, this.themeId, this.testId, this.points);

  String? getCurrentUserEmail() {
    final user = FirebaseAuth.instance.currentUser;
    return user?.email;
  }

  Future<void> addOrUpdateUserPoints() async {
    String? userEmail = getCurrentUserEmail();
    if (userEmail == null) {
      print('User is not logged in.');
      return;
    }

    DocumentReference testRef = FirebaseFirestore.instance
        .collection('Users')
        .doc(userEmail)
        .collection('Subjects')
        .doc(subjectId)
        .collection('Themes')
        .doc(themeId)
        .collection('Tests')
        .doc(testId);

    try {
      await FirebaseFirestore.instance.runTransaction((transaction) async {
        DocumentSnapshot snapshot = await transaction.get(testRef);

        if (snapshot.exists) {
          transaction.update(testRef, {'points': points});
        } else {
          transaction.set(testRef, {'points': points});
        }
      });
    } catch (error, stackTrace) {
      print('Error updating user points: $error');
      print('Stack trace: $stackTrace');
    }
    DocumentReference studentRef =
        FirebaseFirestore.instance.collection('Users').doc(userEmail);
    try {
      DocumentSnapshot studentSnapshot = await studentRef.get();

      if (studentSnapshot.exists) {
        await studentRef.update({
          'lastUpdated': FieldValue.serverTimestamp(),
        });
      } else {
        await studentRef.set({
          'created': FieldValue.serverTimestamp(),
        });
      }
    } catch (e) {
      log('Error adding or updating student: $e');
    }
  }

  Future<void> addOrUpdateUserData(
    int passedQuestions,
    int timeSpend,
  ) async {
    String? userEmail = getCurrentUserEmail();
    if (userEmail == null) {
      print('User is not logged in.');
      return;
    }

    DocumentReference studentRef =
        FirebaseFirestore.instance.collection('Users').doc(userEmail);
    try {
      DocumentSnapshot studentSnapshot = await studentRef.get();

      if (studentSnapshot.exists) {
        await studentRef.update({
          'lastPassed': FieldValue.serverTimestamp(),
          'passedQuestions': FieldValue.increment(passedQuestions),
          'timeSpendAll': FieldValue.increment(timeSpend),
        });
      } else {
        await studentRef.set({
          'lastPassed': FieldValue.serverTimestamp(),
          'passedQuestions': passedQuestions,
          'timeSpendAll': timeSpend,
        });
      }
    } catch (e) {
      log('Error adding or updating student: $e');
    }
    DocumentReference testRef = FirebaseFirestore.instance
        .collection('Users')
        .doc(userEmail)
        .collection('Subjects')
        .doc(subjectId)
        .collection('Themes')
        .doc(themeId)
        .collection('Tests')
        .doc(testId);

    try {
      await FirebaseFirestore.instance.runTransaction((transaction) async {
        DocumentSnapshot snapshot = await transaction.get(testRef);

        if (snapshot.exists) {
          transaction.update(testRef, {
            'lastPassed': FieldValue.serverTimestamp(),
            'passedQuestions': FieldValue.increment(passedQuestions),
            'timeSpendAll': FieldValue.increment(timeSpend),
          });
        } else {
          transaction.set(testRef, {
            'lastPassed': FieldValue.serverTimestamp(),
            'passedQuestions': passedQuestions,
            'timeSpendAll': timeSpend,
          });
        }
      });
    } catch (error, stackTrace) {
      print('Error updating user points: $error');
      print('Stack trace: $stackTrace');
    }
  }
}
