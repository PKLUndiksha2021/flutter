import 'package:dimatalogbook/components/inputfieldcompany.dart';
import 'package:flutter/material.dart';

class SquareCompanyField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final Icon icon;
  final ValueChanged<String> onChanged;
  const SquareCompanyField({
    Key key,
    this.hintText,
    this.icon,
    this.labelText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainerCompany(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          labelText: "Company Code",
          hintText: "Company Code",
        ),
      ),
    );
  }
}
