import 'package:dimatalogbook/components/listcardtype.dart';
import 'package:dimatalogbook/ticket/components/listwaiting.dart';
import 'package:flutter/material.dart';

class ListDashboard extends StatelessWidget {
  const ListDashboard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Container(
        color: Colors.white,
        height: size.height * 0.7,
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  NameListCard(
                    size: size,
                    name: "In Progress",
                    press: () {},
                  ),
                  SizedBox(height: size.height * 0.01),
                  ListCardType(
                    colorcategory: Colors.purple[300],
                    category: "Bugs",
                    daydate: "Today 3.16 P.M",
                    code: "#57613",
                    detail: "Terjadi kesalahan pada saat checkout...",
                  ),
                  ListCardType(
                    colorcategory: Colors.red[300],
                    category: "Problem",
                    daydate: "Today 9.59 A.M",
                    code: "#35563",
                    detail: "Terjadi kesalahan pada saat checkout...",
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Container(
              child: Column(
                children: <Widget>[
                  NameListCard(
                    size: size,
                    name: "Waiting for Support",
                    press: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ListWaiting();
                          },
                        ),
                      );
                    },
                  ),
                  SizedBox(height: size.height * 0.01),
                  ListCardType(
                    colorcategory: Colors.blue[300],
                    category: "Request",
                    daydate: "Today 3.16 P.M",
                    code: "#57613",
                    detail: "Terjadi kesalahan pada saat checkout...",
                  ),
                  ListCardType(
                    colorcategory: Colors.purple[300],
                    category: "Bugs",
                    daydate: "Today 3.16 P.M",
                    code: "#57613",
                    detail: "Terjadi kesalahan pada saat checkout...",
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
