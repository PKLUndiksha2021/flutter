import 'package:dimatalogbook/company/company.dart';
import 'package:dimatalogbook/company/components.dart/companydetailbar.dart';
import 'package:dimatalogbook/constants.dart';
import 'package:flutter/material.dart';

class DetailCompany extends StatefulWidget {
  @override
  _DetailCompanyState createState() => _DetailCompanyState();
}

class _DetailCompanyState extends State<DetailCompany> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 0, 30),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        DetailCompanyBar(),
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
                              Text("Company Code : " + "ABCDE"),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Row(
                            children: <Widget>[
                              Text("Company Name : " + "Toko Baju Suka"),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Row(
                            children: <Widget>[
                              Text("Description : " + "Store"),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.02,
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
                                      return CompanyScreen();
                                    },
                                  ),
                                );
                              },
                              icon: Icon(
                                Icons.check,
                                color: Colors.white,
                              ),
                              label: Text(
                                "Done",
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
