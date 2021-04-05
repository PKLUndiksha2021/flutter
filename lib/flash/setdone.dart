import 'package:dimatalogbook/constants.dart';
import 'package:dimatalogbook/flash/components/radiantgradientmaskicon.dart';
import 'package:dimatalogbook/ticket/components/ticketbody.dart';
import 'package:dimatalogbook/ticket/ticket.dart';
import 'package:flutter/material.dart';

class SetDone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 21, 42, 1.0),
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
                  size: 100,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              "Set this ticket to be",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Text(
              "Done?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: kSecondaryGradientColor,
              ),
              margin: EdgeInsets.symmetric(vertical: 10),
              width: size.width * 0.8,
              child: ClipRRect(
                child: FlatButton.icon(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return TicketScreen();
                        },
                      ),
                    );
                  },
                  icon: Icon(Icons.check),
                  label: Text(
                    "Set done",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TicketBody();
                    },
                  ),
                );
              },
              child: Text(
                "Back",
                style: TextStyle(
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
