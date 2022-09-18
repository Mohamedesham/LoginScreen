import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled5/screens/home_screen.dart';
import 'package:untitled5/screens/login_screen.dart';


class ControlScreen extends StatefulWidget {


  @override
  State<ControlScreen> createState() => _ControlScreenState();
}

class _ControlScreenState extends State<ControlScreen> {
  String? email;

  getdata() async {
    SharedPreferences refernse = await SharedPreferences.getInstance();
    setState(() {
      email = refernse.getString("email");
    });

  }
  @override
  void initState() {
    getdata();


  }

  @override
  Widget build(BuildContext context) {
    return email==null?LoginScreen():HomeScreen() ;
  }

}
