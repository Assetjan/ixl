import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ixl/config/routes/app_routes.dart';
import 'package:ixl/core/common/custom_backround.dart';
import 'package:ixl/features/presentation/pages/profile/components/profile_background.dart';
import 'package:ixl/features/presentation/pages/profile/components/profile_menu.dart';
import 'package:ixl/features/presentation/pages/splashscreen/splash_screen.dart';
import 'package:ixl/features/presentation/pages/subjects/components/lesson_provider.dart';
import 'package:provider/provider.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({super.key});

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    void logout() async {
      await FirebaseAuth.instance.signOut();
      Navigator.pushNamed(context, AppRoutes.splashscreen);
    }

    final lesProvider = Provider.of<LessonProvider>(context, listen: false);
    final email = lesProvider.getCurrentUserEmail();
    final String? name = FirebaseAuth.instance.currentUser!.displayName;
    return CustomBackround(
      secondWidgetScrollable: true,
      firstWidget: [
        const SizedBox(height: 25),
        Row(
          children: [
            FirebaseAuth.instance.currentUser!.photoURL == 'teacher'
                ? IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  )
                : const SizedBox(),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: const Text(
                'Edit',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Profile",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ],
        ),
        SizedBox(
          width: 90,
          child: Stack(children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 75,
                height: 75,
                margin: const EdgeInsets.only(top: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0)),
                  color: Colors.white,
                ),
                child: Center(
                  child: Image.asset("assets/images/profile_photo.png"),
                ),
              ),
            ),
          ]),
        ),
        const SizedBox(height: 10),
        Text(name ?? 'Name Surname',
            style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold)),
        Text(
            FirebaseAuth.instance.currentUser!.photoURL == 'student'
                ? email.toString().substring(0, email!.length - 10)
                : email ?? "account@gmail.com",
            style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.normal)),
        const SizedBox(height: 25),
      ],
      secondWidget: [
        const SizedBox(height: 20),
        ProfileMenu(
          title: 'Settings',
          icon: Icons.settings,
          onPress: () {},
        ),
        const SizedBox(height: 20),
        ProfileMenu(
          title: 'Password',
          icon: Icons.lock,
          onPress: () {},
        ),
        const SizedBox(height: 20),
        ProfileMenu(
          title: 'Information',
          icon: Icons.info_outline,
          onPress: () {},
        ),
        const SizedBox(height: 20),
        ProfileMenu(
          title: 'Help',
          icon: Icons.help_outline,
          onPress: () {},
        ),
        const SizedBox(height: 20),
        ProfileMenu(
          title: 'Log out',
          icon: Icons.logout,
          onPress: () {
            logout();
          },
          endIcon: false,
          textColor: Colors.red,
        ),
      ],
    );
  }
}
