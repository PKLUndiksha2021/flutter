import 'package:dimatalogbook/profile/components/profilebody.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  //static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: ProfileBody(),
    );
  }
}
