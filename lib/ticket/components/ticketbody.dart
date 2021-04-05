import 'package:dimatalogbook/company/company.dart';
import 'package:dimatalogbook/components/inputfield.dart';
import 'package:dimatalogbook/components/listcardtype.dart';
import 'package:dimatalogbook/components/squareinputmultiplefield.dart';
import 'package:dimatalogbook/constants.dart';
import 'package:dimatalogbook/dashboard/dashboarddimata.dart';
import 'package:dimatalogbook/flash/submited.dart';
import 'package:dimatalogbook/profile/profile.dart';
import 'package:dimatalogbook/ticket/ticket.dart';
import 'package:dimatalogbook/welcome/welcome.dart';
import 'package:flutter/material.dart';

class TicketBody extends StatefulWidget {
  const TicketBody({
    Key key,
  }) : super(key: key);
  @override
  _TicketBodyState createState() => _TicketBodyState();
}

class _TicketBodyState extends State<TicketBody> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  ReportType selectedReportType;

  List<ReportType> reportType = [
    ReportType("Support"),
    ReportType("Bugs"),
    ReportType("Problem"),
    ReportType("Request"),
  ];

  List<DropdownMenuItem> generateItems(List<ReportType> reportType) {
    List<DropdownMenuItem> items = [];
    for (var item in reportType) {
      items.add(DropdownMenuItem(
        child: Text(item.type),
        value: item,
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        key: _globalKey,
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              new ListTile(
                title: new Text('Dashboard'),
                trailing: new Icon(Icons.dashboard),
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DashboardDimata(),
                  ));
                },
              ),
              new ListTile(
                title: new Text('Ticket'),
                trailing: new Icon(Icons.credit_card),
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => TicketScreen(),
                  ));
                },
              ),
              new ListTile(
                title: new Text('Company'),
                trailing: new Icon(Icons.home),
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => CompanyScreen(),
                  ));
                },
              ),
              new ListTile(
                title: new Text('Profile'),
                trailing: new Icon(Icons.people),
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => ProfileScreen(),
                  ));
                },
              ),
              new ListTile(
                title: new Text('Logout'),
                trailing: new Icon(Icons.arrow_back),
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => WelcomeScreen(),
                  ));
                },
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 0, 30),
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Row(
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
                            showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  _buildPopupNotification(context),
                            );
                          },
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                      padding: EdgeInsets.fromLTRB(5, 10, 5, 25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: size.height * 0.03),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Add Ticket",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                "*=Required",
                                style:
                                    TextStyle(color: Colors.red, fontSize: 10),
                              ),
                            ],
                          ),
                          SizedBox(height: size.height * 0.01),
                          SquareInputField(
                            hintText: "Automatic",
                            labelText: "Ticket Number*",
                            onChanged: (value) {},
                          ),
                          SquareInputMultipleField(
                            hintText: "Log Description",
                            labelText: "Log Description*",
                            onChanged: (value) {},
                            min: 5,
                            max: 5,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            width: size.width * 1,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                hintText: "-Choose report type-",
                                labelText: "Report Type*",
                              ),
                              value: selectedReportType,
                              items: generateItems(reportType),
                              onChanged: (item) {
                                setState(() {
                                  selectedReportType = item;
                                });
                              },
                            ),
                          ),
                          SquareInputMultipleField(
                            hintText: "CC to",
                            labelText: "CC to",
                            min: 2,
                            onChanged: (value) {},
                          ),
                          SizedBox(height: size.height * 0.03),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: kSecondaryGradientColor,
                            ),
                            margin: EdgeInsets.symmetric(vertical: 10),
                            width: size.width * 0.8,
                            child: ClipRRect(
                              child: FlatButton.icon(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return TicketSent();
                                      },
                                    ),
                                  );
                                },
                                label: Text(
                                  "Sent",
                                  style: TextStyle(color: Colors.white),
                                ),
                                icon: Icon(
                                  Icons.send,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return DashboardDimata();
                                  },
                                ),
                              );
                            },
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Class Position
class ReportType {
  String type;
  ReportType(this.type);
}

// //Widget pop up Notification
Widget _buildPopupNotification(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return new AlertDialog(
    title: const Text(
      'Notification',
      style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: kTextColorSecondary),
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.zero,
    ),
    backgroundColor: kNotifColor,
    content: Container(
      width: size.width * 0.3,
      child: Column(
        children: <Widget>[
          SizedBox(height: size.height * 0.01),
          ListCardTypeNotif(
            colorcategory: Colors.purple[300],
            category: "Bugs",
            daydate: "Today 3.16 P.M",
            code: "#57613",
            detail: "Terjadi kesalahan pada saat checkout...",
          ),
        ],
      ),
    ),
    actions: <Widget>[
      Container(
        width: size.width * 0.25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kSecondaryColor,
        ),
        child: ClipRRect(
          child: new FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            textColor: kTextColorPrimary,
            child: const Text('Close'),
          ),
        ),
      ),
    ],
  );
}
