import 'package:flutter/material.dart';

class Login1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var logo = CircleAvatar(
      radius: 72.0,
      backgroundColor: Colors.transparent,
      child: FlutterLogo(
        size: 96.0,
        colors: Colors.orange,
      ),
    );

    var email = TextFormField(
        keyboardType: TextInputType.emailAddress,
        initialValue: "Someone@email.com",
        decoration: InputDecoration(
            hintText: "your email address",
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));

    var pass = TextFormField(
        initialValue: "password",
        obscureText: true,
        decoration: InputDecoration(
            hintText: "your password",
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));

    var loginBtn = Material(
      shadowColor: Colors.black,
      borderRadius: BorderRadius.circular(10.0),
      child: MaterialButton(
        color: Colors.cyan,
        minWidth: 150.0,
        elevation: 6.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Login",
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
        onPressed: () {
          Scaffold.of(context).showSnackBar(SnackBar(content: Text("Login")));
        },
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(
              left: 24.0,
              right: 24.0,
            ),
            children: <Widget>[
              logo,
              SizedBox(height: 48.0),
              email,
              SizedBox(height: 8.0),
              pass,
              SizedBox(height: 24.0),
              Container(
                  margin: EdgeInsets.only(left: 48.0, right: 48.0),
                  child: loginBtn),
              SizedBox(
                height: 8.0,
              ),
              Center(child: forgotLabel)
            ],
          ),
        ),
      ),
    );
  }
}
