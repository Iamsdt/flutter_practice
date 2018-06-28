import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          getMainTop(),
          Padding(padding: EdgeInsets.all(8.0)),
          getContact()
        ],
      ),
    );
  }

  getMainTop() {
    return Material(
      elevation: 0.0,
      type: MaterialType.canvas,
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0)),
      color: Colors.grey,
      child: Container(
        color: Colors.cyan,
        child: Column(
          children: <Widget>[getTop(), getSocialStatus()],
        ),
      ),
    );
  }

  getTop() {
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 80.0,
          child: Image(
            image: AssetImage('images/user.png'),
            width: 150.0,
            height: 130.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Shudipto Trafder",
            style: TextStyle(fontSize: 30.0, color: Colors.white),
          ),
        )
      ],
    );
  }

  getSocialStatus() {
    final textStyle = TextStyle(fontSize: 18.0);

    final textStyle2 = TextStyle(fontSize: 16.0, color: Colors.teal);

    return Card(
      margin: EdgeInsets.only(left: 24.0, right: 24.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Photos",
                    style: textStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "500",
                    style: textStyle2,
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Followers",
                    style: textStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "1350",
                    style: textStyle2,
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Following",
                    style: textStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "520",
                    style: textStyle2,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  getContact() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.mail),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Someine@gamail.com"),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.call),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("+0123456789"),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.person_add),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Added to group"),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.comment),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Show All Comments"),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 8.0),
            child: Material(
              elevation: 1.0,
              borderRadius: BorderRadius.circular(8.0),
              child: Container(
                padding: const EdgeInsets.all(12.0),
                color: Colors.cyan.shade700,
                child: Text(
                  "Follow Me",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
