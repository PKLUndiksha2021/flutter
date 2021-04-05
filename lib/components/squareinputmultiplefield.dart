import 'package:flutter/material.dart';

class SquareInputMultipleField extends StatelessWidget {
  final Function validator;
  final TextInputType keyboard;
  final int min;
  final int max;
  final String hintText;
  final String labelText;
  final ValueChanged<String> onChanged;
  const SquareInputMultipleField({
    Key key,
    this.hintText,
    this.labelText,
    this.onChanged,
    this.validator,
    this.keyboard,
    this.min,
    this.max,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      width: size.width * 1,
      // decoration: InputDecoration(
      //   color: Colors.transparent,
      //   borderRadius: BorderRadius.circular(10),
      // ),
      child: TextFormField(
        maxLines: max,
        keyboardType: keyboard,
        validator: validator,
        //controller: controller,
        onChanged: onChanged,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2.0),
          ),
        ),
      ),
      // child: TextField(
      //   onChanged: onChanged,
      //   cursorColor: Colors.grey,
      //   decoration: InputDecoration(
      //     hintText: hintText,
      //     labelText: labelText,
      //   ),
      //   maxLines: 10,
      // ),
    );
  }
}
