import 'package:flutter/material.dart';
import 'package:untitled5/screens/control_screen.dart';
import 'package:untitled5/screens/home_screen.dart';
import 'package:untitled5/screens/login_screen.dart';
import 'package:untitled5/screens/test_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: ControlScreen(),
    );
  }
}


