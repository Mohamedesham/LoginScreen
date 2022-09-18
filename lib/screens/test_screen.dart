import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class TestScreen extends StatefulWidget {

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  String name = "user name";

  int age = 0;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Screen'),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "name",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                "age",
                style: TextStyle(fontSize: 30),
              ),
              TextFormField(
                onSaved: (value) {
                  name = value.toString();
                },
                decoration: InputDecoration(
                  labelText: 'name',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onSaved: (value) {
                  age = int.parse(value.toString());
                },
                decoration: InputDecoration(
                  labelText: 'age',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  saveData();
                },
                child: Text("save"),
              )
            ],
          ),
        ),
      ),
    );
  }

  saveData() async {
    // save info in database
    _formKey.currentState!.save();
    SharedPreferences preferences = await SharedPreferences.getInstance();

    preferences .setString("name", name);
    print(preferences.getString("name"));
    preferences .setInt("age", age);
    print(preferences.getInt("age"));

    setState(() {
      preferences .setString("name", "Oscar");
      print(preferences.getString("name"));
      preferences .setInt("age", 21);
      print(preferences.getInt("age"));
    });


  }
}
