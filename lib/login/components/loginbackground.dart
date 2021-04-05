import 'package:flutter/material.dart';

class LoginBackground extends StatelessWidget {
  final Widget child;
  const LoginBackground({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Positioned(
          top: -size.height / 2.5,
          child: Container(
            height: size.height / 1,
            width: size.width / 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background/background.png"),
              ),
            ),
          ),
        ),
        child,
      ],
    );
  }
}
