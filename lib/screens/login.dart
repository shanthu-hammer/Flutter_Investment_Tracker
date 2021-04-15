import 'package:flutter/material.dart';
import 'package:login_page/screens/forgotpassword.dart';
import '../components/appbar.dart';
import '../constants/theme.dart';
import '../screens/investment.dart';
import 'dashboard.dart';
import 'signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          'Login Page',
          textAlign: TextAlign.left,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: ThemeColor.background,
      body: Padding(
        padding: EdgeInsets.all(30),
        //child: Image,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              //Email
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter your Email or User-name'),
              ),
              SizedBox(
                height: 15,
              ),
              //Password
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter a secured password'),
              ),
              SizedBox(
                height: 15,
              ),
              //Forgot Password
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgotPassword()));
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(color: ThemeColor.button),
                ),
              ),
              SizedBox(
                height: 76,
              ),
              //Login
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
              // Create Account
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpForm()),
                  );
                },
                child: Text(
                  'New User? Create Account',
                  style: TextStyle(color: ThemeColor.text),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
