import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Menu/TimelinePage.dart';
import 'package:flutter_auth/Screens/Login/components/background.dart';
import 'package:flutter_auth/Screens/Menu/components/body.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  @override
  BodyState createState() {
    return BodyState();
  }
}

class BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();

  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Post',
      style: optionStyle,
    ),
    Text(
      'Index 1: Timeline',
      style: optionStyle,
    ),
    Text(
      'Index 2: Messages',
      style: optionStyle,
    ),
  ];

  void _onNavigationItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Timeline Page')),
        body: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: _widgetOptions.elementAt(_selectedIndex),
                ),
              ],
            )),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.post_add), label: 'Post'),
            BottomNavigationBarItem(
                icon: Icon(Icons.timeline), label: 'Timeline'),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Messages'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onNavigationItemTapped,
        ));
  }
}
