import 'package:dimatalogbook/login/login.dart';
import 'package:flutter/material.dart';
import 'package:dimatalogbook/components/roundedbutton.dart';

class ProfileForm extends StatefulWidget {
  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  // String id, fullname, email, noHp, tanggalLahir;

  // signOut() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   setState(() {
  //     preferences.setInt('role_id', 0);
  //   });
  //   Navigator.pushNamed(context, '/login_page');
  // }

  // getPref() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   setState(() {
  //     id = preferences.getString('id_akun');
  //     fullname = preferences.getString('nama_lengkap');
  //     email = preferences.getString('email');
  //     noHp = preferences.getString('no_hp');
  //     tanggalLahir = preferences.getString('tanggal_lahir');
  //   });
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   getPref();
  // }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      SizedBox(
        height: 10,
      ),
      Text(
        'Profile',
        style: TextStyle(fontSize: 25),
      ),
      SizedBox(
        height: 10,
      ),
      RoundedInputField(
        hintText: "Fullname",
        icon: Icons.supervised_user_circle,
        text: "Test",
      ),
      RoundedInputField(
        hintText: "Email",
        icon: Icons.email,
        text: "test@gmail.com",
      ),
      RoundedInputField(
        hintText: "Company",
        icon: Icons.home,
        text: "12345",
      ),
      RoundedInputField(
          hintText: "Position",
          icon: Icons.supervised_user_circle,
          text: "Staff"),
      RoundedButton(
        text: "Keluar",
        press: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return LoginScreen();
              },
            ),
          );
        },
      ),
    ]));
  }
}
