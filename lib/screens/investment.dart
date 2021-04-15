import 'package:flutter/material.dart';
import '../constants/theme.dart';
import '../components/appbar.dart';

class InvestInputForm extends StatefulWidget {
  @override
  _InvestInputFormState createState() => _InvestInputFormState();
}

class _InvestInputFormState extends State<InvestInputForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Investment'),
      ),
      backgroundColor: ThemeColor.background,
    );
  }
}
