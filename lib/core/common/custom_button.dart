import 'package:flutter/material.dart';
import 'package:ixl/core/colors.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final double width;
  final double height;
  final String text;
  final int fontSize;
  final FontWeight fontWeight;
  final Color textColor;
  final Color backgroundColor;
  const CustomButton({
    super.key,
    this.width = double.infinity,
    this.height = 50,
    required this.onTap,
    required this.text,
    this.fontSize = 20,
    this.fontWeight = FontWeight.bold,
    this.textColor = Colors.white,
    this.backgroundColor = AppColors.main_blue,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width.toDouble(),
        height: height.toDouble(),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontWeight: fontWeight,
              fontSize: fontSize.toDouble(),
            ),
          ),
        ),
      ),
    );
  }
}
