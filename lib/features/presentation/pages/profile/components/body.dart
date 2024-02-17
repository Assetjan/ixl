import 'package:flutter/material.dart';
import 'package:ixl/features/presentation/pages/profile/components/background.dart';

class ProfileBody extends StatefulWidget {
  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    return ProfileBackground(
      child: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 55),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Profile", style: TextStyle(color: Colors.white, fontSize: 25),),
              ],
            ),
            Container(
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
            SizedBox(height: 10),
            Text("Name Surname", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
            Text("account@gmail.com", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.normal)),
            SizedBox(height: 55),
            ProfileMenu(title: 'Settings', icon: Icons.settings, onPress: () {},), 
            SizedBox(height: 20),
            ProfileMenu(title: 'Password', icon: Icons.lock, onPress: () {},),
            SizedBox(height: 20),
            ProfileMenu(title: 'Information', icon: Icons.info_outline, onPress: () {},),
            SizedBox(height: 20),
            ProfileMenu(title: 'Help', icon: Icons.help_outline, onPress: () {},),
            SizedBox(height: 20),
            ProfileMenu(title: 'Log out', icon: Icons.logout, onPress: () {}, endIcon: false, textColor: Colors.red,),
          ],
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key, required this.title, required this.icon, required this.onPress, this.endIcon = true, this.textColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color.fromRGBO(9, 52, 86, 1),
        ),
        child: Icon(icon, color: Colors.white, size: 30,),
      ),
      title: Text(title, style: TextStyle(fontSize: 20, color: (textColor)),),
      trailing: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey.withOpacity(0.3),
        ),
        child: Icon(Icons.chevron_right, size: 30, color: Colors.grey,),
       ),
    );
  }
}