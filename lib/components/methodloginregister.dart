import 'package:dimatalogbook/welcome/welcome.dart';
import 'package:flutter/material.dart';

class ContainerTitle extends StatelessWidget {
  final String title;
  final String textprocess;
  final String imagegoogle;
  final String imagefacebook;
  //final Function pressback;
  final Function pressgoogle;
  final Function pressfacebook;
  const ContainerTitle({
    Key key,
    @required this.size,
    this.title,
    this.imagegoogle,
    this.imagefacebook,
    //this.pressback,
    this.pressgoogle,
    this.pressfacebook,
    this.textprocess,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: size.height * 0.075),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10),
            ),
            IconButton(
              icon: Icon(
                Icons.keyboard_backspace,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WelcomeScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20),
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 30),
              textAlign: TextAlign.end,
            ),
          ],
        ),
        SizedBox(height: size.height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 250),
            ),
            Text(
              textprocess,
              style: TextStyle(color: Colors.black, fontSize: 14),
              textAlign: TextAlign.right,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 250),
            ),
            GestureDetector(
              onTap: pressgoogle,
              child: Container(
                height: 40,
                width: 40,
                margin: EdgeInsets.symmetric(horizontal: 3),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.blue,
                  ),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                    imagegoogle,
                  )),
                ),
              ),
            ),
            GestureDetector(
              onTap: pressfacebook,
              child: Container(
                height: 40,
                width: 40,
                margin: EdgeInsets.symmetric(horizontal: 3),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.blue,
                  ),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                    imagefacebook,
                  )),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
