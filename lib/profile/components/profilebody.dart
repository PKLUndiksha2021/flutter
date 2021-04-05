import 'package:dimatalogbook/profile/components/profileform.dart';
import 'package:dimatalogbook/profile/components/profilepic.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfilePic(),
            SizedBox(height: 20),
            ProfileForm(),
          ],
        ),
      ),
    );
  }
}
