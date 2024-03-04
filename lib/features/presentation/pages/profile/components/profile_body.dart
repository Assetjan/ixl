import 'package:flutter/material.dart';
import 'package:ixl/features/presentation/pages/profile/components/profile_background.dart';
import 'package:ixl/features/presentation/pages/profile/components/profile_menu.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({super.key});

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    return ProfileBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 55),
        child: Column(
          children: [
            Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                Text("Profile", style: TextStyle(color: Colors.white, fontSize: 25),),
              ],
            ),
            SizedBox(
              width: 90,
              child: Stack(
                children: [ 
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
                    child: Center(child: Image.asset("assets/images/profile_photo.png"),),
                  ),
                ),
                ]
              ),
            ),
            const SizedBox(height: 10),
            const Text("Name Surname", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
            const Text("account@gmail.com", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.normal)),
            const SizedBox(height: 55),
            ProfileMenu(title: 'Settings', icon: Icons.settings, onPress: () {},), 
            const SizedBox(height: 20),
            ProfileMenu(title: 'Password', icon: Icons.lock, onPress: () {},),
            const SizedBox(height: 20),
            ProfileMenu(title: 'Information', icon: Icons.info_outline, onPress: () {},),
            const SizedBox(height: 20),
            ProfileMenu(title: 'Help', icon: Icons.help_outline, onPress: () {},),
            const SizedBox(height: 20),
            ProfileMenu(title: 'Log out', icon: Icons.logout, onPress: () {}, endIcon: false, textColor: Colors.red,),
          ],
        ),
      ),
    );
  }
}

