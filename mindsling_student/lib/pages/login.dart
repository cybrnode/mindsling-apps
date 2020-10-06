import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bar'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: Image(
                image: AssetImage('assets/logo.jpg'),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(30.0, 40.0, 15.0, 10.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 30.0, 25.0, 0),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(FontAwesomeIcons.userGraduate),
                    hintText: 'School ID',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 30.0),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(FontAwesomeIcons.userLock),
                    hintText: 'Password',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 30.0),
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text('Forgot Password ?')),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 30.0, 25.0, 60.0),
              child: RaisedButton(
                onPressed: () {},
                child: Text('Login'),
              ),
            ),
            Text("Don't have an account? Signup"),
          ],
        ),
      ),
    );
  }
}
