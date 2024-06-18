import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ixl/config/routes/bottom_navigation_bar.dart';
import 'package:ixl/core/colors.dart';
import 'package:ixl/core/common/custom_button.dart';
import 'package:ixl/features/presentation/pages/signin/components/sign_in_background.dart';
import 'package:ixl/core/services/auth_service.dart';
import 'package:ixl/features/presentation/pages/teacher/signin_teacher/sign_in_teacher_page.dart';

class SignInBody extends StatefulWidget {
  const SignInBody({super.key});

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final bool _validate = false;
  bool _hidePass = true;
  bool _isLoading = false;

  void signUserIn(BuildContext context, String email, String password) async {
    setState(() {
      _isLoading = true;
    });
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null && user.photoURL == 'student') {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const BottomNavigation()),
        );
      } else {
        wrongMessage('Access Denied: You are not a student.');
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        wrongMessage('Incorrect username');
      } else if (e.code == 'invalid-credential') {
        wrongMessage('Incorrect password');
      } else {
        wrongMessage('An error occurred. Please try again later.');
      }
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  void wrongMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color(0xff093456),
          title: Center(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  Future<void> showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Are you teacher?'),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
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
                    "Student",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignInTeacherPage()),
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
                    "Teacher",
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
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => showMyDialog(context));
  }

  @override
  Widget build(BuildContext context) {
    return SignInBackground(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 400),
                child: TextFormField(
                  controller: emailController,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 0),
                    errorText: _validate ? "Login Can't Be Empty" : null,
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.person_2_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    hintText: 'Username',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: _hidePass,
                  maxLength: 8,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 0),
                    errorText: _validate ? "Құпия сөзді жазыңыз" : null,
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
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
              _isLoading
                  ? const CircularProgressIndicator(
                      color: AppColors.main_blue,
                    )
                  : CustomButton(
                      onTap: () {
                        signUserIn(
                          context,
                          emailController.text.trim() + "@gmail.com",
                          passwordController.text,
                        );
                      },
                      text: "Кіру"),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      endIndent: 10,
                    ),
                  ),
                  Text(
                    "or",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      indent: 10,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: Colors.grey, width: 1),
                    ),
                  ),
                  icon: Image.asset(
                    "assets/icons/google.png",
                    width: 30,
                    height: 30,
                  ),
                  label: const Text(
                    'Continue with Google',
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                  onPressed: () {
                    AuthService().signInWithGoogle();
                  },
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide.none, // Remove border
                    ),
                  ),
                  icon: Image.asset(
                    "assets/icons/apple_logo_white.svg.png",
                    width: 30,
                    height: 30,
                  ),
                  label: const Text(
                    'Continue with Apple',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Are you'),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInTeacherPage()),
                      );
                    },
                    child: const Text(
                      ' Teacher?',
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
              SizedBox(height: 35),
            ],
          ),
        ),
      ),
    );
  }
}
