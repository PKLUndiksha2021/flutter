import 'package:dimatalogbook/constants.dart';
import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color colors, textColor;
  const SquareButton({
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
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
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
