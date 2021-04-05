import 'package:dimatalogbook/constants.dart';
import 'package:flutter/material.dart';

class SquareButtonPopup extends StatelessWidget {
  final String text;
  final Function press;
  final Color colors, textColor;
  const SquareButtonPopup({
    Key key,
    this.text,
    this.press,
    this.colors,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: kPrimaryGradientColor,
      ),
      margin: EdgeInsets.all(10),
      width: size.width * 0.7,
      child: ClipRRect(
        child: FlatButton(
          padding: EdgeInsets.all(10.0),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
