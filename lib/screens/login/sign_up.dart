import 'package:flutter/material.dart';
import 'package:modern_login_ui/screens/home/home.dart';
import 'package:modern_login_ui/widgets/custom_circle_button.dart';

class SignUp extends StatefulWidget {
  final Function toggleLogin;
  SignUp({this.toggleLogin});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // text field state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        children: <Widget>[],
      ),
    );
  }
}
