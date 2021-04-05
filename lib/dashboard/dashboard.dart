import 'package:dimatalogbook/dashboard/components/bar.dart';
import 'package:dimatalogbook/dashboard/components/box.dart';
import 'package:dimatalogbook/dashboard/components/list.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Bar(),
              SizedBox(height: size.height * 0.02),
              Box(),
              SizedBox(height: size.height * 0.02),
              ListDashboard(),
              SizedBox(height: size.height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
