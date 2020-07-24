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
  String email = '';
  String password = '';
  String error = '';
  bool _passwordIsHidden = true;
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
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Login',
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                            .copyWith(color: Colors.black),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      // Email Text field
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Email address'),
                        validator: (val) =>
                            val.isEmpty ? 'Enter an email' : null,
                        onChanged: (val) {
                          setState(() => email = val);
                        },
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      // Password Text Field
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: GestureDetector(
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  _passwordIsHidden = !_passwordIsHidden;
                                });
                              },
                              icon: Icon(
                                _passwordIsHidden
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                          ),
                        ),
                        obscureText: _passwordIsHidden,
                        validator: (val) => val.length < 8
                            ? 'Enter a password 8+ characters long'
                            : null,
                        onChanged: (val) {
                          setState(() => password = val);
                        },
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      CustomCircleButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Need to create an account?',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      FlatButton(
                        color: Theme.of(context).primaryColor,
                        onPressed: () {
                          widget.toggleLogin();
                        },
                        child: Text(
                          'Sign Up'.toUpperCase(),
                          style: TextStyle(color: Colors.white),
                        ),
                        shape: const StadiumBorder(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
