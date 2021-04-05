import 'package:dimatalogbook/constants.dart';
import 'package:flutter/material.dart';

class BacktoDashboardWhite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150.0,
              height: 150.0,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Icon(
                Icons.assignment_turned_in,
                size: 150.0,
                color: Colors.white,
              ),
            ),
            Text(
              "Thank you!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Text(
              "See you soon",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
