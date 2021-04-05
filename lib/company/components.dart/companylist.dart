import 'package:dimatalogbook/components/listcardtype.dart';
import 'package:flutter/material.dart';

class CompanyList extends StatelessWidget {
  const CompanyList({
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
                  SizedBox(height: size.height * 0.01),
                  ListCardCompany(
                    name: "Toko Baju Suka",
                    code: "ABCDE",
                    description: "Store",
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
