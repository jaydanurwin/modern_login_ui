import 'package:flutter/material.dart';
import 'package:modern_login_ui/screens/home/home.dart';
import 'package:modern_login_ui/widgets/custom_circle_button.dart';

class SignIn extends StatefulWidget {
  final Function toggleLogin;
  SignIn({this.toggleLogin});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // text field state
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          children: <Widget>[],
        ),
      ),
    );
  }
}
