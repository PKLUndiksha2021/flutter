import 'package:dimatalogbook/company/company.dart';
import 'package:flutter/material.dart';

class DetailCompanyBar extends StatelessWidget {
  const DetailCompanyBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.75,
      alignment: Alignment.topCenter,
      //color: Colors.grey[50],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(
              Icons.keyboard_backspace,
              color: Colors.black,
              size: 30.0,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CompanyScreen();
                  },
                ),
              );
            },
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  "ABC",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ],
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.purple,
            ),
            // margin: EdgeInsets.symmetric(vertical: 10),
            width: MediaQuery.of(context).size.width * 0.15,
            height: MediaQuery.of(context).size.height * 0.04,
            child: ClipRRect(
              child: FlatButton(
                padding: EdgeInsets.symmetric(
                  vertical: 0.005,
                  horizontal: 0.01,
                ),
                onPressed: () {},
                child: Text(
                  "Edit",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
            ),
            // margin: EdgeInsets.symmetric(vertical: 10),
            width: MediaQuery.of(context).size.width * 0.15,
            height: MediaQuery.of(context).size.height * 0.04,
            child: ClipRRect(
              child: FlatButton(
                padding: EdgeInsets.symmetric(
                  vertical: 0.005,
                  horizontal: 0.01,
                ),
                onPressed: () {},
                child: Text(
                  "Delete",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
