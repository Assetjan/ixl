import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ixl/core/colors.dart';
import 'package:ixl/core/common/custom_button.dart';
import 'package:ixl/features/presentation/pages/teacher/teacher_page/components/custom_dropdown.dart';

class UpdateStudentPage extends StatefulWidget {
  final String email;
  final String password;
  const UpdateStudentPage({
    super.key,
    required this.email,
    required this.password,
  });

  @override
  State<UpdateStudentPage> createState() => _UpdateStudentPageState();
}

class _UpdateStudentPageState extends State<UpdateStudentPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  bool _hidePass = true;
  bool _isLoading = false;
  final bool _validate = false;

  final List<String> grade = [
    '7',
    '8',
    '9',
    '10',
    '11',
  ];
  final List<String> classes = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
  ];
  String? selectedValueGrade;
  String? selectedValueClasses;
  String? getCurrentUserEmail() {
    final user = FirebaseAuth.instance.currentUser;
    return user?.email;
  }

  Future<void> addOrUpdateStudent() async {
    String? userEmail = getCurrentUserEmail();
    if (userEmail == null) {
      log('User is not logged in.');
      return;
    }
    String studentEmail = _emailController.text.trim() + "@gmail.com";
    FirebaseFirestore db = FirebaseFirestore.instance;

    DocumentReference scoresRef = db
        .collection('Teachers')
        .doc(userEmail)
        .collection('Classes')
        .doc('$selectedValueGrade $selectedValueClasses');
    DocumentReference studentRef = db
        .collection('Teachers')
        .doc(userEmail)
        .collection('Students')
        .doc(widget.email);
    try {
      DocumentSnapshot studentSnapshot = await studentRef.get();
      if (studentSnapshot.exists) {
        await studentRef.update({
          'lastUpdated': FieldValue.serverTimestamp(),
          'mentor': userEmail,
          'class': '$selectedValueGrade $selectedValueClasses',
          'grade': selectedValueGrade,
        });
        if (_nameController.text.trim() != '') {
          await studentRef.update({
            'name': _nameController.text,
          });
        }
        if (_passwordController.text.trim() != '') {
          await studentRef.update({
            'password': _passwordController.text,
          });
        }
      }
      _emailController.clear();
      _passwordController.clear();
      _nameController.clear();
      showErrorMessage(context, "Student updated successfuly!");
    } catch (e) {
      log('Error adding or updating student: $e');
    }
  }

  void signUserUp(BuildContext context, String password, String name) async {
    FirebaseApp secondaryApp = await Firebase.initializeApp(
      name: 'SecondaryApp',
      options: Firebase.app().options,
    );
    try {
      UserCredential userCredential =
          await FirebaseAuth.instanceFor(app: secondaryApp)
              .signInWithEmailAndPassword(
        email: widget.email,
        password: widget.password,
      );
      if (name.trim() != '') {
        await userCredential.user?.updateDisplayName(name);
      }
      if (password.trim() != '') {
        await userCredential.user?.updatePassword(password);
      }

      await FirebaseAuth.instance.currentUser?.reload();
      addOrUpdateStudent();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        showErrorMessage(context, 'The username is not valid.');
      } else if (e.code == 'weak-password') {
        showErrorMessage(context, 'The password is too weak.');
      } else if (e.code == 'email-already-in-use') {
        showErrorMessage(context, 'The username is already in use.');
      } else {
        showErrorMessage(context, 'An error occurred: ${e.code}');
      }
      log(e.code);
    } finally {
      setState(() {
        _isLoading = false;
      });
      Navigator.pop(context);
    }
    await secondaryApp.delete();
  }

  void showErrorMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Add your student',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: TextFormField(
                              controller: _nameController,
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 0),
                                errorText:
                                    _validate ? "Name Can't Be Empty" : null,
                                fillColor: Colors.white,
                                filled: true,
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 1.0,
                                  ),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 1.0,
                                  ),
                                ),
                                prefixIcon: const Padding(
                                  padding: EdgeInsets.all(0.0),
                                  child: Icon(
                                    Icons.info,
                                    color: Colors.grey,
                                  ),
                                ),
                                hintText: 'Аты',
                                hintStyle: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: CustomDropdown(
                                    items: grade,
                                    selectedValue: selectedValueGrade,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedValueGrade = value;
                                      });
                                    },
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: CustomDropdown(
                                    items: classes,
                                    selectedValue: selectedValueClasses,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedValueClasses = value;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: TextFormField(
                              controller: _passwordController,
                              obscureText: _hidePass,
                              maxLength: 8,
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 0),
                                errorText:
                                    _validate ? "Құпия сөзді жазыңыз" : null,
                                suffixIcon: IconButton(
                                    icon: Icon(_hidePass
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        _hidePass = !_hidePass;
                                      });
                                    }),
                                fillColor: Colors.white,
                                filled: true,
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 1.0,
                                  ),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 1.0,
                                  ),
                                ),
                                prefixIcon: const Padding(
                                  padding: EdgeInsets.all(0.0),
                                  child: Icon(
                                    Icons.lock,
                                    color: Colors.grey,
                                  ),
                                ),
                                hintText: 'Құпия сөз',
                                hintStyle: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          _isLoading
                              ? CircularProgressIndicator(
                                  color: AppColors.main_blue)
                              : GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _isLoading = true;
                                    });

                                    signUserUp(
                                      context,
                                      _passwordController.text,
                                      _nameController.text,
                                    );
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: AppColors.main_blue,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Тіркеу",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  void initState() {
    selectedValueGrade = grade[0];
    selectedValueClasses = classes[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showMyDialog(context);
        log('${widget.email} ${widget.password}');
      },
      child: const Icon(Icons.edit, size: 18),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    super.dispose();
  }
}
