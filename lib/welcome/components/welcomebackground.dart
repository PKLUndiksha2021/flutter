import 'package:flutter/material.dart';

class WelcomeBackground extends StatelessWidget {
  final Widget child;
  const WelcomeBackground({
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
          top: -size.height / 4,
          child: Container(
            height: size.height / 1,
            width: size.width / 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background/background.png"),
              ),
            ),
            child: Center(
              child: Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        child,
      ],
    );
  }
}
