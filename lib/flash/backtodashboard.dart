import 'package:dimatalogbook/constants.dart';
import 'package:dimatalogbook/flash/components/radiantgradientmaskicon.dart';
import 'package:flutter/material.dart';

class BacktoDashboard extends StatelessWidget {
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
              child: RadiantGradientMask(
                child: Icon(
                  Icons.assignment_turned_in,
                  size: 150,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
