import 'package:dimatalogbook/dashboard/notification/notification.dart';
import 'package:flutter/material.dart';

class Bar extends StatefulWidget {
  const Bar({
    Key key,
  }) : super(key: key);

  @override
  _BarState createState() => _BarState();
}

class _BarState extends State<Bar> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: _globalKey,
      padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.list),
            color: Colors.black,
            onPressed: () {
              _globalKey.currentState.openDrawer();
            },
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.65,
            decoration: BoxDecoration(
              color: Color(0xFF979797).withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                hintText: "Search ticket/title",
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            color: Colors.black,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NotificationButton();
                  },
                ),
              );
              // showDialog(
              //   context: context,
              //   builder: (BuildContext context) =>
              //       _buildPopupNotification(context),
              // );
            },
          ),
        ],
      ),
    );
  }
}

// //Widget pop up Notification
// Widget _buildPopupNotification(BuildContext context) {
//   //Size size = MediaQuery.of(context).size;
//   return new AlertDialog(
//     title: const Text(
//       'Notification',
//       style: TextStyle(fontSize: 20),
//     ),
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.zero,
//     ),
//     backgroundColor: Colors.amber,
//     content: Container(),
//     actions: <Widget>[
//       new FlatButton(
//         onPressed: () {
//           Navigator.of(context).pop();
//         },
//         textColor: Theme.of(context).primaryColor,
//         child: const Text('Close'),
//       ),
//     ],
//   );
// }
