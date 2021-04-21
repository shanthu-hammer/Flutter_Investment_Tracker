import 'package:flutter/material.dart';
import 'package:login_page/screens/forgotpassword.dart';
import '../components/appbar.dart';
import '../constants/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dashboard.dart';
import 'signup.dart';

import 'package:firebase_core/firebase_core.dart';
//final FirebaseAuth _auth = FirebaseAuth.instance;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _email, _password;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
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
      body: Form(
        key: _formkey,
        child: Padding(
          padding: EdgeInsets.all(30),
          //child: Image,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                //Email
                TextFormField(
                  validator: (input) {
                    if (input.isEmpty) {
                      return 'This cannot be empty';
                    }
                  },
                  onSaved: (input) => _email,
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
                  obscureText: true,
                  validator: (input) {
                    if (input.isEmpty) {
                      return 'Enter a valid password';
                    }
                  },
                  onSaved: (input) => _password,
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
                    onPressed: Sign_in_button,
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
      ),
    );
  }

  Future<void> Sign_in_button() async {
    final _formstate = _formkey.currentState;
    if (_formstate.validate()) {
      try {
        AuthResult result = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: _email, password: _password);
        FirebaseUser user = result.user;
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DashBoard()),
        );
      } catch (e) {
        print(e.message);
      }
    }
  }
}
