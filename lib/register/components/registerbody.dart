import 'package:dimatalogbook/components/accountcheck.dart';
import 'package:dimatalogbook/components/companyfield.dart';
import 'package:dimatalogbook/components/inputfield.dart';
import 'package:dimatalogbook/components/methodloginregister.dart';
//import 'package:dimatalogbook/components/inputfieldcompany.dart';
import 'package:dimatalogbook/components/passwordfield.dart';
import 'package:dimatalogbook/components/squarebutton.dart';
import 'package:dimatalogbook/register/components/registerbackground.dart';
import 'package:dimatalogbook/login/login.dart';
import 'package:flutter/material.dart';

class RegisterBody extends StatefulWidget {
  @override
  _RegisterBodyState createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  Position selectedPosition;

  List<Position> position = [
    Position("Staff"),
    Position("Manager"),
    Position("Supervisor"),
    Position("Owner"),
  ];

  List<DropdownMenuItem> generateItems(List<Position> position) {
    List<DropdownMenuItem> items = [];
    for (var item in position) {
      items.add(DropdownMenuItem(
        child: Text(item.name),
        value: item,
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return RegisterBackground(
      child: Align(
        alignment: Alignment.topCenter,
        child: ListView(
          children: <Widget>[
            ContainerTitle(
              size: size,
              title: "Register",
              textprocess: "Or register with",
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
                    hintText: "Name",
                    labelText: "Name",
                    onChanged: (value) {},
                  ),
                  SquareInputField(
                    hintText: "Email",
                    labelText: "Email",
                    onChanged: (value) {},
                  ),
                  SquareCompanyField(
                    hintText: "Company Code",
                    labelText: "Company Code",
                    onChanged: (value) {},
                  ),
                  SquarePasswordField(
                    onChanged: (value) {},
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    width: size.width * 1,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        hintText: "Your position on Company",
                        labelText: "Your position on Company",
                      ),
                      value: selectedPosition,
                      items: generateItems(position),
                      onChanged: (item) {
                        setState(() {
                          selectedPosition = item;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  SquareButton(
                    text: "Register",
                    press: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return DashboardPage();
                      //     },
                      //   ),
                      // );
                    },
                  ),
                  SizedBox(height: size.height * 0.03),
                  AlreadyHaveAnAccountCheck(
                    login: false,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Class Position
class Position {
  String name;
  Position(this.name);
}
