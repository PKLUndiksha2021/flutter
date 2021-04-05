import 'package:dimatalogbook/components/category.dart';
import 'package:dimatalogbook/components/halfsquarebutton.dart';
import 'package:dimatalogbook/components/totalytype.dart';
import 'package:dimatalogbook/ticket/components/ticketbody.dart';
import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  const Box({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Container(
        //color: Colors.amber,
        height: size.height * 0.325,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "My Tikets",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                HalfSquareButton(
                  size: size,
                  text: "Add New Ticket",
                  press: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return TicketBody();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TotalyType(size: size, totaly: "2", type: "In Progress"),
                TotalyType(size: size, totaly: "7", type: "Waiting"),
              ],
            ),
            SizedBox(height: size.height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Category(color: Colors.green[300], text: "2", label: "Support"),
                Category(color: Colors.purple[300], text: "2", label: "Bugs"),
                Category(color: Colors.red[300], text: "0", label: "Problems"),
                Category(color: Colors.blue[300], text: "5", label: "Request"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
