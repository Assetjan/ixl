import 'package:flutter/material.dart';
import 'package:ixl/core/colors.dart';

class NumericKeypad extends StatefulWidget {
  final TextEditingController controller;
  final Function() hide;
  final Function() onSubmit;

  NumericKeypad({
    super.key,
    required this.controller,
    required this.hide,
    required this.onSubmit,
  });

  @override
  State<NumericKeypad> createState() => _NumericKeypadState();
}

class _NumericKeypadState extends State<NumericKeypad> {
  late TextEditingController _controller;
  bool isNumeric = true;
  bool isUpperCase = false;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.keyboard_backround,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            if (isNumeric) ...[
              _buildNumericRows(),
            ] else ...[
              _buildAlphabeticRows(),
            ],
            SizedBox(height: 6),
            SizedBox(
              height: 35,
              child: Row(
                children: [
                  _buildSpaceButton(),
                  SizedBox(width: 3),
                  _buildSubmitButton(),
                  SizedBox(width: 3),
                  _buildButton('A', onPressed: _toggleKeyboard),
                  SizedBox(width: 3),
                  isNumeric
                      ? SizedBox()
                      : _buildIconButton(
                          isUpperCase
                              ? Icons.arrow_downward_outlined
                              : Icons.arrow_upward_outlined,
                          onPressed: _toggleCase),
                  SizedBox(width: 3),
                  _buildIconButton(
                    Icons.keyboard_arrow_down_outlined,
                    onPressed: widget.hide,
                  ),
                  SizedBox(width: 3),
                  _buildButton('⌫', onPressed: _backspace),
                ],
              ),
            ),
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }

  Widget _buildNumericRows() {
    return Column(
      children: [
        Row(
          children: [
            _buildButton('⁻'),
            SizedBox(width: 3),
            _buildButton('¹'),
            SizedBox(width: 3),
            _buildButton('²'),
            SizedBox(width: 3),
            _buildButton('³'),
            SizedBox(width: 3),
            _buildButton('⁴'),
            SizedBox(width: 3),
            _buildButton('⁵'),
            SizedBox(width: 3),
            _buildButton('⁶'),
            SizedBox(width: 3),
            _buildButton('⁷'),
            SizedBox(width: 3),
            _buildButton('⁸'),
            SizedBox(width: 3),
            _buildButton('⁹'),
            SizedBox(width: 3),
            _buildButton('⁰'),
          ],
        ),
        SizedBox(height: 6),
        Row(
          children: [
            _buildButton('*'),
            SizedBox(width: 3),
            _buildButton('/'),
            SizedBox(width: 3),
            _buildButton('-'),
            SizedBox(width: 3),
            _buildButton('√'),
            SizedBox(width: 3),
            _buildButton('%'),
          ],
        ),
        SizedBox(height: 6),
        Row(
          children: [
            _buildButton('^'),
            SizedBox(width: 3),
            _buildButton(','),
            SizedBox(width: 3),
            _buildButton('.'),
            SizedBox(width: 3),
            _buildButton('('),
            SizedBox(width: 3),
            _buildButton(')'),
          ],
        ),
        SizedBox(height: 6),
        Row(
          children: [
            _buildButton('1'),
            SizedBox(width: 3),
            _buildButton('2'),
            SizedBox(width: 3),
            _buildButton('3'),
            SizedBox(width: 3),
            _buildButton('4'),
            SizedBox(width: 3),
            _buildButton('5'),
            SizedBox(width: 3),
            _buildButton('6'),
            SizedBox(width: 3),
            _buildButton('7'),
            SizedBox(width: 3),
            _buildButton('8'),
            SizedBox(width: 3),
            _buildButton('9'),
            SizedBox(width: 3),
            _buildButton('0'),
          ],
        ),
      ],
    );
  }

  Widget _buildAlphabeticRows() {
    return Column(
      children: [
        Row(
          children: [
            _buildButton(isUpperCase ? 'Q' : 'q'),
            SizedBox(width: 3),
            _buildButton(isUpperCase ? 'W' : 'w'),
            SizedBox(width: 3),
            _buildButton(isUpperCase ? 'E' : 'e'),
            SizedBox(width: 3),
            _buildButton(isUpperCase ? 'R' : 'r'),
            SizedBox(width: 3),
            _buildButton(isUpperCase ? 'T' : 't'),
            SizedBox(width: 3),
            _buildButton(isUpperCase ? 'Y' : 'y'),
            SizedBox(width: 3),
            _buildButton(isUpperCase ? 'U' : 'u'),
            SizedBox(width: 3),
            _buildButton(isUpperCase ? 'I' : 'i'),
            SizedBox(width: 3),
            _buildButton(isUpperCase ? 'O' : 'o'),
            SizedBox(width: 3),
            _buildButton(isUpperCase ? 'P' : 'p'),
          ],
        ),
        SizedBox(height: 6),
        Row(
          children: [
            _buildButton(isUpperCase ? 'A' : 'a'),
            SizedBox(width: 3),
            _buildButton(isUpperCase ? 'S' : 's'),
            SizedBox(width: 3),
            _buildButton(isUpperCase ? 'D' : 'd'),
            SizedBox(width: 3),
            _buildButton(isUpperCase ? 'F' : 'f'),
            SizedBox(width: 3),
            _buildButton(isUpperCase ? 'G' : 'g'),
            SizedBox(width: 3),
            _buildButton(isUpperCase ? 'H' : 'h'),
            SizedBox(width: 3),
            _buildButton(isUpperCase ? 'J' : 'j'),
            SizedBox(width: 3),
            _buildButton(isUpperCase ? 'K' : 'k'),
            SizedBox(width: 3),
            _buildButton(isUpperCase ? 'L' : 'l'),
          ],
        ),
        SizedBox(height: 6),
        Row(
          children: [
            _buildButton(isUpperCase ? 'Z' : 'z'),
            SizedBox(width: 3),
            _buildButton(isUpperCase ? 'X' : 'x'),
            SizedBox(width: 3),
            _buildButton(isUpperCase ? 'C' : 'c'),
            SizedBox(width: 3),
            _buildButton(isUpperCase ? 'V' : 'v'),
            SizedBox(width: 3),
            _buildButton(isUpperCase ? 'B' : 'b'),
            SizedBox(width: 3),
            _buildButton(isUpperCase ? 'N' : 'n'),
            SizedBox(width: 3),
            _buildButton(isUpperCase ? 'M' : 'm'),
          ],
        ),
      ],
    );
  }

  Widget _buildButton(String text, {VoidCallback? onPressed}) {
    return Expanded(
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(5.0),
        child: InkWell(
          onTap: onPressed ?? () => _input(text),
          borderRadius: BorderRadius.circular(5.0),
          highlightColor: const Color.fromARGB(136, 33, 33, 33),
          splashColor: const Color.fromARGB(136, 33, 33, 33),
          child: SizedBox(
            height: 43,
            child: Center(
              child: Text(
                text,
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, {VoidCallback? onPressed}) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: SizedBox(
          height: 43,
          child: Material(
            elevation: 1,
            borderRadius: BorderRadius.circular(5.0),
            child: Center(child: Icon(icon)),
          ),
        ),
      ),
    );
  }

  Widget _buildSpaceButton() {
    return Expanded(
      flex: 2,
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            _input(' ');
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: Colors.grey,
            foregroundColor: Colors.white,
          ),
          child: const Text(
            "Space",
            style: TextStyle(fontSize: 13),
          ),
        ),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return Expanded(
      flex: 3,
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: widget.onSubmit,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
          ),
          child: const Text(
            "Submit",
            style: TextStyle(fontSize: 13),
          ),
        ),
      ),
    );
  }

  void _input(String text) {
    final value = widget.controller.text + text;
    widget.controller.text = value;
  }

  void _backspace() {
    final value = widget.controller.text;
    if (value.isNotEmpty) {
      widget.controller.text = value.substring(0, value.length - 1);
    }
  }

  void _toggleKeyboard() {
    setState(() {
      isNumeric = !isNumeric;
    });
  }

  void _toggleCase() {
    setState(() {
      isUpperCase = !isUpperCase;
    });
  }
}
