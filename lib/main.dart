import 'package:flutter/material.dart';
import 'package:flutter_practice/login/LoginMain.dart';
import 'package:flutter_practice/profile/Profile.dart';
import 'package:flutter_practice/profile/Profile2.dart';
import 'package:flutter_practice/profile/ProfileMain.dart';
import 'package:flutter_practice/splash/Splash2.dart';
import 'package:flutter_practice/splash/SplashAnimation.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    "/profile": (context) => ProfileMain(),
    "/splash": (context) => Splash2(),
    "/login": (context) => LoginMain(),
  };

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
          ListTile(
            title: Text("Splash Screen"),
            onTap: () {
              return Navigator.pushNamed(context, "/splash");
            },
          ),
          ListTile(
            title: Text("Profile UI"),
            onTap: () {
              return Navigator.pushNamed(context, "/profile");
            },
          ),
          ListTile(
            title: Text("Login UI"),
            onTap: () {
              return Navigator.pushNamed(context, "/login");
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
}
