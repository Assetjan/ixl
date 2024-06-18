import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ixl/core/colors.dart';

class ShowDialog {
  void showBackDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Are you sure?'),
          content: const Text(
            'Are you sure you want to leave this page?',
          ),
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
                    "Stay",
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
                SystemNavigator.pop();
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
                    "Leave",
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
}
