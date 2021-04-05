import 'package:dimatalogbook/components/textfieldcontainer.dart';
import 'package:flutter/material.dart';

class SquareInputField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  const SquareInputField({
    Key key,
    this.hintText,
    this.labelText,
    this.onChanged,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        controller: controller,
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
        ),
      ),
    );
  }
}
