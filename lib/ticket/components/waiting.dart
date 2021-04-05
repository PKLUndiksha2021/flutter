import 'package:dimatalogbook/components/listcardtype.dart';
import 'package:flutter/material.dart';

class Waiting extends StatelessWidget {
  const Waiting({
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
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
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
          ],
        ),
      ),
    );
  }
}
