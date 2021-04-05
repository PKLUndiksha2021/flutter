import 'package:dimatalogbook/components/textfieldcontainer.dart';
import 'package:flutter/material.dart';

class SquarePasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const SquarePasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          labelText: "Password",
          hintText: "Password",
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
