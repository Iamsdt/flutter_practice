import 'package:flutter/material.dart';
import 'package:flutter_practice/login/Login1.dart';
import 'package:flutter_practice/profile/Profile.dart';
import 'package:flutter_practice/profile/Profile2.dart';

class LoginMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text("Profile Examples"),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
          ListTile(
            title: Text("Login1"),
            onTap: () {
              return Navigator.push(context, getPageRoute(Login1()));
            },
          ),
          ListTile(
            title: Text("Login2"),
            onTap: () {
              return Navigator.push(context, getPageRoute(Profile2()));
            },
          ),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: null,
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  getPageRoute(dynamic route) {
    return MaterialPageRoute(builder: (_) {
      return (route);
    });
  }
}
