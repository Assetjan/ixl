import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class CustomDropdown extends StatefulWidget {
  final List<String> items;
  final String? selectedValue;
  final Function(String?) onChanged;
  final Color color;
  final int elevation;
  final Color textColor;
  final Color borderColor;
  final Color menuBackgroundColor;
  final Color menuItemColor;
  final int width;
  final int height;
  final int menuWidth;
  final int menuHeight;
  const CustomDropdown({
    Key? key,
    required this.items,
    this.selectedValue,
    required this.onChanged,
    this.color = Colors.white,
    this.elevation = 2,
    this.textColor = Colors.black,
    this.borderColor = Colors.black26,
    this.menuBackgroundColor = Colors.white,
    this.menuItemColor = Colors.black,
    this.height = 35,
    this.width = 80,
    this.menuHeight = 200,
    this.menuWidth = 100,
  }) : super(key: key);

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        isExpanded: true,
        hint: Row(
          children: [
            Expanded(
              child: Text(
                widget.selectedValue ?? widget.items[0],
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: widget.textColor,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        items: widget.items.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(
              item,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: widget.menuItemColor,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          );
        }).toList(),
        value: widget.selectedValue,
        onChanged: widget.onChanged,
        buttonStyleData: ButtonStyleData(
          height: widget.height.toDouble(),
          width: widget.width.toDouble(),
          padding: const EdgeInsets.only(left: 14, right: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
              color: widget.borderColor,
            ),
            color: widget.color,
          ),
          elevation: widget.elevation,
        ),
        iconStyleData: IconStyleData(
          icon: Icon(
            Icons.arrow_drop_down,
          ),
          iconSize: 14,
          iconEnabledColor: widget.textColor,
          iconDisabledColor: Colors.grey,
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: widget.menuHeight.toDouble(),
          width: widget.menuWidth.toDouble(),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: widget.menuBackgroundColor,
          ),
          offset: const Offset(-20, 0),
          scrollbarTheme: ScrollbarThemeData(
            radius: const Radius.circular(40),
            thickness: MaterialStateProperty.all<double>(6),
            thumbVisibility: MaterialStateProperty.all<bool>(true),
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
          padding: EdgeInsets.only(left: 14, right: 14),
        ),
      ),
    );
  }
}
