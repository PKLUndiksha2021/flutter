import 'package:dimatalogbook/ticket/components/detailticketbar.dart';
import 'package:dimatalogbook/constants.dart';
import 'package:dimatalogbook/flash/setdone.dart';
import 'package:flutter/material.dart';

class DetailTicket extends StatefulWidget {
  @override
  _DetailTicketState createState() => _DetailTicketState();
}

class _DetailTicketState extends State<DetailTicket> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        DetailTicketBar(),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                  "Reported by : " + "You (Staff - Hotel Name"),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Row(
                            children: <Widget>[
                              Text("Followed up by : " + "Made (Dimata Team)"),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                  "Report date : " + "28 June 2020 @ 14:23 PM"),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Row(
                            children: <Widget>[
                              Text("Report type : " + "Bugs"),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                height: 100,
                                width: size.width * 0.8,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 2.0),
                                  shape: BoxShape.rectangle,
                                ),
                                //margin: EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                    "Terjadi kesalahan pada saat checkout..."),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Row(
                            children: <Widget>[
                              Text("CC to : " +
                                  "'Made Putra' 'Wayan Pande Astika'"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: kSecondaryGradientColor,
                          ),
                          margin: EdgeInsets.symmetric(vertical: 10),
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: ClipRRect(
                            child: FlatButton.icon(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return SetDone();
                                    },
                                  ),
                                );
                              },
                              icon: Icon(
                                Icons.check,
                                color: Colors.white,
                              ),
                              label: Text(
                                "Set done",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
