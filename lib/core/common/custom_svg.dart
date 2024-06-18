import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvgImage extends StatelessWidget {
  const CustomSvgImage({
    super.key,
    required this.iconPath,
  });
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SvgPicture.asset(iconPath),
    );
  }
}
