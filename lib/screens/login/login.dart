import 'package:flutter/material.dart';
import 'package:modern_login_ui/screens/login/sign_in.dart';
import 'package:modern_login_ui/screens/login/sign_up.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showSignIn = false;
  void toggleLogin() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignIn(toggleLogin: toggleLogin);
    } else {
      return SignUp(toggleLogin: toggleLogin);
    }
  }
}
