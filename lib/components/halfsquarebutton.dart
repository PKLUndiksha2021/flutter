import 'package:dimatalogbook/constants.dart';
import 'package:flutter/material.dart';

class HalfSquareButton extends StatelessWidget {
  final String text;
  final Function press;
  const HalfSquareButton({
    Key key,
    @required this.size,
    this.text,
    this.press,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: kPrimaryGradientColor,
      ),
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.4,
      child: ClipRRect(
        child: FlatButton.icon(
          onPressed: press,
          icon: Icon(
            Icons.add,
            color: Colors.white,
          ),
          label: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ),
      ),
    );
  }
}
