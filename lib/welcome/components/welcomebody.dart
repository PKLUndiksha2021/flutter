import 'package:dimatalogbook/components/squarebutton.dart';
import 'package:dimatalogbook/login/login.dart';

import 'package:dimatalogbook/register/register.dart';
import 'package:dimatalogbook/welcome/components/welcomebackground.dart';
import 'package:flutter/material.dart';

class WelcomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WelcomeBackground(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(10, 175, 10, 5),
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.2,
                  ),
                  Image.asset(
                    "assets/images/background/logo-logbook.png",
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  SquareButton(
                    text: "Login",
                    press: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen();
                          },
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return RegisterScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.10,
                  ),
                  Text(
                    "A product By IT Dimata Solutions",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Image.asset(
                    "assets/images/background/logo-dimata.png",
                    width: size.width * 0.3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
