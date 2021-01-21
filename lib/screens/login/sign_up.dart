import 'package:flutter/material.dart';

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
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.85,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
