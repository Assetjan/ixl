import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class TestData {
  final String testId;
  final int points;

  TestData({required this.testId, required this.points});

  factory TestData.fromFirestore(DocumentSnapshot doc) {
    return TestData(
      testId: doc.id,
      points: doc['points'],
    );
  }
}

class UserService {
  String? getCurrentUserEmail() {
    final user = FirebaseAuth.instance.currentUser;
    return user?.email;
  }

  Stream<TestData?> getTestDataStream(
      String subjectId, String themeId, String testId) {
    String? userEmail = getCurrentUserEmail();
    if (userEmail == null) {
      return Stream.value(null);
    }

    return FirebaseFirestore.instance
        .collection('Users')
        .doc(userEmail)
        .collection('Subjects')
        .doc(subjectId)
        .collection('Themes')
        .doc(themeId)
        .collection('Tests')
        .doc(testId)
        .snapshots()
        .map((documentSnapshot) {
      if (documentSnapshot.exists) {
        return TestData.fromFirestore(documentSnapshot);
      } else {
        print('Document does not exist');
        return null;
      }
    }).handleError((error) {
      print('Error fetching test data: $error');
      return null;
    });
  }

  Future<TestData?> getTestData(
      String subjectId, String themeId, String testId) async {
    String? userEmail = getCurrentUserEmail();
    if (userEmail == null) {
      print('User is not logged in.');
      return null;
    }

    try {
      DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance
          .collection('Users')
          .doc(userEmail)
          .collection('Subjects')
          .doc(subjectId)
          .collection('Themes')
          .doc(themeId)
          .collection('Tests')
          .doc(testId)
          .get();

      if (documentSnapshot.exists) {
        return TestData.fromFirestore(documentSnapshot);
      } else {
        print('Document does not exist');
        return null;
      }
    } catch (error) {
      print('Error fetching test data: $error');
      return null;
    }
  }

  Stream<QuerySnapshot> getStudentsStream() {
    String? userEmail = getCurrentUserEmail();
    if (userEmail != null) {
      return FirebaseFirestore.instance
          .collection('Teachers')
          .doc(userEmail)
          .collection('Students')
          .snapshots();
    } else {
      return Stream.empty();
    }
  }

  Stream<QuerySnapshot> getClassesStream() {
    String? userEmail = getCurrentUserEmail();
    if (userEmail != null) {
      return FirebaseFirestore.instance
          .collection('Teachers')
          .doc(userEmail)
          .collection('Students')
          .snapshots();
    } else {
      return Stream.empty();
    }
  }
}
