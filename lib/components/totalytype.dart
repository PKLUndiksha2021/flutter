import 'package:flutter/material.dart';

class TotalyType extends StatelessWidget {
  final String totaly;
  final String type;
  const TotalyType({
    Key key,
    @required this.size,
    this.totaly,
    this.type,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          width: 1.0,
          style: BorderStyle.solid,
          color: Colors.black,
        ),
      ),
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.4,
      child: ClipRRect(
        child: FlatButton(
          onPressed: () {},
          child: Text(
            totaly + "    " + type,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
