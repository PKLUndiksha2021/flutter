import 'package:dimatalogbook/components/textfieldcontainer.dart';
import 'package:flutter/material.dart';

class SquarePassword extends StatefulWidget {
  //final ValueChanged<String> onChanged;
  final TextEditingController controller;
  const SquarePassword({
    Key key,
    //this.onChanged,
    this.controller,
  })  : assert(controller != null),
        super(key: key);
  @override
  _SquarePasswordState createState() => _SquarePasswordState();
}

class _SquarePasswordState extends State<SquarePassword> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: widget.controller,
        obscureText: !_showPassword,
        //onChanged: onChanged,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          labelText: "Password",
          hintText: "Password",
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _showPassword = !_showPassword;
              });
            },
            child: Icon(
              _showPassword ? Icons.visibility : Icons.visibility_off,
            ),
          ),
        ),
      ),
      // validator: (String value) {
      //   if (value.isEmpty) {
      //     return "Please enter your password";
      //   }
      // },
    );
  }
}

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
