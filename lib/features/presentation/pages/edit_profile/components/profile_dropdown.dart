import 'package:flutter/material.dart';

class ProfileDropDown extends StatelessWidget {
  final String label;
  final List<String> values;

  const ProfileDropDown({super.key, required this.label, required this.values});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
          ),
          labelText: label,
        ),
        value: values.first,
        onChanged: (String? newValue) {
          // Handle change
        },
        items: values.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}