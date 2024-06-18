import 'package:flutter/material.dart';

class IconBasedOnScore extends StatelessWidget {
  const IconBasedOnScore(
      {super.key, required this.score, required this.iconAsset});
  final double score;
  final String iconAsset;
  @override
  Widget build(BuildContext context) {
    return Image.asset(iconAsset);
  }
}
