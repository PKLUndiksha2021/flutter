import 'package:dimatalogbook/components/popupbutton.dart';
import 'package:flutter/material.dart';

class TextFieldContainerCompany extends StatelessWidget {
  final Widget child;
  const TextFieldContainerCompany({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          width: size.width * 0.75,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: child,
        ),
        Switch(
          value: false,
          activeColor: Color.fromRGBO(50, 172, 121, 1),
          onChanged: (_) {
            showDialog(
              context: context,
              builder: (BuildContext context) =>
                  _buildPopupCompanyCode(context),
            );
          },
        ),
      ],
    );
  }
}

//Widget pop up Company Code
Widget _buildPopupCompanyCode(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return new AlertDialog(
    title: const Text(
      'Company Code',
      style: TextStyle(fontSize: 20),
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    content: Padding(
      padding: const EdgeInsets.all(10.0),
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Company code is the code used to register the company identity registered with Dimata.",
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(height: size.height * 0.01),
          Text(
            "Get your company code from the Dimata team by calling the following number",
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(height: size.height * 0.03),
          Text(
            "Hotline: " + "+6281 812 377 10011",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 11.0,
            ),
          ),
          SizedBox(height: size.height * 0.03),
          Text(
            "Phone: " + "+62361 482431 499029",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 11.0,
            ),
          ),
          SizedBox(height: size.height * 0.03),
        ],
      ),
    ),
    actions: <Widget>[
      SquareButtonPopup(
        text: "Ok, got it",
        press: () {
          Navigator.of(context).pop();
        },
      ),
      // new FlatButton(
      //   onPressed: () {

      //   },
      //   textColor: Theme.of(context).primaryColor,
      //   child: const Text('Close'),
      // ),
    ],
  );
}
