
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled5/screens/home_screen.dart';
import 'package:untitled5/screens/test_screen.dart';





class LoginScreen extends StatelessWidget {


  var email =TextEditingController();
  var password =TextEditingController();

  setdata() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("email", email.toString());
    preferences.setString("pass", password.toString());
   preferences.getString("pass");
    preferences.getString("email");



  }








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login Screen'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: email,
            decoration: InputDecoration(
              labelText: 'email',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: password,
            decoration: InputDecoration(
              labelText: 'password',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setdata();
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>HomeScreen() ));



            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
