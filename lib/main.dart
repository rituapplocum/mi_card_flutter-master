import 'package:flutter/material.dart';

void main() {
  runApp(MiCard());
}
//Hot reload will only work on Stateful or Stateless widget

class MiCard extends StatelessWidget {
  const MiCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSshW2NpetcJKgpq6jaRpnFR2uxuGAXWEN8KQ&usqp=CAU"),
              ),
              Text("Ritu Sudeep",
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 40,
                      color: Colors.white)),
              Text("Android Developer",
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 20,
                      color: Colors.teal.shade50,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: ListTile(
                    leading: Icon(Icons.phone, color: Colors.teal),
                  title: Text(
                        "9898950506",
                        style: TextStyle(
                          color: Colors.teal,
                          fontFamily: 'OpenSans',
                  ),
                ),
              )),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: ListTile(
                    leading: Icon(Icons.email, color: Colors.teal),
                    title: Text(
                      "apt-200@yopmail.com",
                      style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'OpenSans',
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
//Container for Single child
/*
return MaterialApp(
home: Scaffold(
backgroundColor: Colors.white,
body: SafeArea(
child: Container(
// margin: EdgeInsets.all(20),//all Sides
// margin: EdgeInsets.symmetric(vertical: 50,horizontal: 20),//Vertical same and Horizontal same space
// margin: EdgeInsets.fromLTRB(20, 10, 30, 40),//diff value for all sides
margin: EdgeInsets.only(left: 50), //only Left margin
padding: EdgeInsets.all(20),
color: Colors.greenAccent,
child: Text("Hello"),
), //Only have one child
),
// used to avoid statusbar and notch at Bottom
// Similar to Div if no children it takes whole space,and container with children will takes its child's size
floatingActionButton: FloatingActionButton(
backgroundColor: Colors.greenAccent,
child: Icon(Icons.add),
),
),
);*/
