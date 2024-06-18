import 'package:flutter/material.dart';
import 'package:ixl/core/colors.dart';

class CustomBackround extends StatelessWidget {
  final List<Widget> firstWidget;
  final List<Widget> secondWidget;
  final bool secondWidgetScrollable;
  const CustomBackround(
      {super.key,
      required this.firstWidget,
      required this.secondWidget,
      required this.secondWidgetScrollable});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: AppColors.main_blue,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: firstWidget,
          ),
        ),
        secondWidgetScrollable
            ? Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 16, left: 16, right: 16),
                  child: ListView(
                    children: secondWidget,
                  ),
                ),
              )
            : Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 16, left: 16, right: 16),
                  child: Column(
                    children: secondWidget,
                  ),
                ),
              ),
      ],
    );
  }
}
