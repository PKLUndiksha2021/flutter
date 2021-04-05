import 'package:dimatalogbook/constants.dart';
import 'package:dimatalogbook/ticket/components/detailticketbody.dart';
import 'package:flutter/material.dart';

class TicketSent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DetailTicket();
                },
              ),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                  gradient: kSecondaryGradientColor,
                  shape: BoxShape.circle,
                ),
                margin: EdgeInsets.symmetric(vertical: 10),
                child: ClipRRect(
                  child: Icon(
                    Icons.assignment_turned_in,
                    size: 100.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                "Your ticket",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                ),
              ),
              Text(
                "has been sent.",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
