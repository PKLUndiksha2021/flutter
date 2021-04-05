import 'package:dimatalogbook/components/textfieldcontainer.dart';
import 'package:flutter/material.dart';

class SquareInputPositionField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final ValueChanged<String> onChanged;
  const SquareInputPositionField({
    Key key,
    this.hintText,
    this.labelText,
    this.onChanged,
    List<Widget> children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
        ),
      ),
    );
  }
}
