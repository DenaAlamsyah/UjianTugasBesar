import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/about/components/background.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
        child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
          SvgPicture.asset(
            "assets/icons/signup.svg",
          ),
          Text('Copyright by :', style: TextStyle(fontSize: 20)),
          Text('Dena Yuda Alamsyah',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Text('18111189',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ])));
  }
}
