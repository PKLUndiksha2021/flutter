import 'package:dimatalogbook/components/accountcheck.dart';
import 'package:dimatalogbook/components/inputfield.dart';
import 'package:dimatalogbook/components/methodloginregister.dart';
import 'package:dimatalogbook/components/passwordfield.dart';
import 'package:dimatalogbook/components/squarebutton.dart';
import 'package:dimatalogbook/dashboard/dashboarddimata.dart';
import 'package:dimatalogbook/login/components/loginbackground.dart';
import 'package:dimatalogbook/register/register.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LoginBackground(
      child: Align(
        alignment: Alignment.topCenter,
        child: ListView(
          children: <Widget>[
            ContainerTitle(
              size: size,
              title: "Login",
              textprocess: "Or login with",
              imagegoogle: "assets/images/background/google.jpg",
              imagefacebook: "assets/images/background/facebook.jpg",
              pressgoogle: () {},
              pressfacebook: () {},
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
              padding: EdgeInsets.fromLTRB(5, 10, 5, 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: size.height * 0.05),
                  SquareInputField(
                    hintText: "Email",
                    labelText: "Email",
                    onChanged: (value) {},
                  ),
                  SquarePasswordField(
                    onChanged: (value) {},
                  ),
                  SizedBox(height: size.height * 0.03),
                  SquareButton(
                    text: "Login",
                    press: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DashboardDimata();
                          },
                        ),
                      );
                    },
                  ),
                  SizedBox(height: size.height * 0.03),
                  AlreadyHaveAnAccountCheck(
                    press: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return RegisterScreen();
                          },
                        ),
                      );
                    },
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
