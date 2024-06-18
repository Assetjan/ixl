import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ixl/config/routes/bottom_navigation_bar.dart';
import 'package:ixl/core/colors.dart';
import 'package:ixl/core/common/custom_button.dart';
import 'package:ixl/core/services/auth_service.dart';
import 'package:ixl/features/presentation/pages/signin/sign_in_page.dart';
import 'package:ixl/features/presentation/pages/teacher/bottom_nav_bar_teacher/bottom_nav_bar_teacher.dart';
import 'package:ixl/features/presentation/pages/teacher/signin_teacher/components/sign_in_teacher_background.dart';
import 'package:ixl/features/presentation/pages/teacher/signin_teacher/sign_in_teacher_page.dart';
import 'package:ixl/features/presentation/pages/teacher/signup_teacher/components/sign_up_teacher_background.dart';
import 'package:ixl/features/presentation/pages/teacher/teacher_page/teacher_page.dart';

class SignUpTeacherBody extends StatefulWidget {
  const SignUpTeacherBody({super.key});

  @override
  State<SignUpTeacherBody> createState() => _SignUpTeacherBodyState();
}

class _SignUpTeacherBodyState extends State<SignUpTeacherBody> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  final bool _validate = false;
  bool _hidePass = true;
  bool _isLoading = false;

  void signUserUp(BuildContext context, String email, String password,
      String name, String photoUrl) async {
    setState(() {
      _isLoading = true;
    });
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await userCredential.user?.updatePhotoURL(photoUrl);
      await userCredential.user?.updateDisplayName(name);

      await FirebaseAuth.instance.currentUser?.reload();

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const BottomNavBarTeacher()),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        showErrorMessage(context, 'Incorrect email');
      } else if (e.code == 'invalid-credential') {
        showErrorMessage(context, 'Incorrect password');
      } else if (e.code == 'email-already-in-use') {
        showErrorMessage(context, 'User with this email already exists');
      } else {
        showErrorMessage(context, 'An error occurred. Please try again later.');
      }
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  void showErrorMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  void wrongEmailMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Color(0xff093456),
          title: Center(
            child: Text(
              'Incorrect Email',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    return SignUpTeacherBackground(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 400),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('Already have account?'),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInTeacherPage()),
                        );
                      },
                      child: const Text(
                        ' Login',
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: TextFormField(
                  controller: nameController,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 0),
                    errorText: _validate ? "Name Can't Be Empty" : null,
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
                    hintText: 'Аты',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
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
                        Icons.email,
                        color: Colors.grey,
                      ),
                    ),
                    hintText: 'E-Mail',
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
              _isLoading
                  ? const CircularProgressIndicator(
                      color: AppColors.main_blue,
                    )
                  : CustomButton(
                      onTap: () async {
                        signUserUp(
                            context,
                            emailController.text,
                            passwordController.text,
                            nameController.text,
                            'teacher');
                      },
                      text: "Тіркелу"),
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
                      side: const BorderSide(
                          color: Colors.grey, width: 1), // <-- Radius
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
                            builder: (context) => const SignInPage()),
                      );
                    },
                    child: const Text(
                      ' Student?',
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
