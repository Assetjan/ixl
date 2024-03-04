import 'package:flutter/material.dart';

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
          color: const Color.fromRGBO(9, 52, 86, 1),
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
        child: const Icon(Icons.chevron_right, size: 30, color: Colors.grey,),
       ),
    );
  }
}