import 'package:login_page/components/appbar.dart';

import '../constants/theme.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';

class SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Sign up form'),
      ),
      backgroundColor: ThemeColor.background,
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User name',
                  hintText: 'Enter your  User name'),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter your Email or User-name'),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              autocorrect: false,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter your Password'),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              autocorrect: false,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Re-Enter Password',
                  hintText: 'Re-Enter your Password'),
            ),
            SizedBox(
              height: 76,
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: ThemeColor.button,
                  borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashBoard()),
                  );
                  //ADD Route here
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: ThemeColor.background),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
