import 'package:flutter/material.dart';
import '../screens/investment.dart';
import '../constants/a.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  var m = 'click here';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text(m),
          FlatButton(
            child: Text(m),
            onPressed: () {
              m = test().a;
            },
          )
        ],
      ),
    );
  }
}
