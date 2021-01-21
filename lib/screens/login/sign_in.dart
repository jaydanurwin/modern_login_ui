import 'package:flutter/material.dart';

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
