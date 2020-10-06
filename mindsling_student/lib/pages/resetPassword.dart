import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bar'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 25.0),
                child: Text(
                  'Reset Password',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width,
              child: Image(
                image: AssetImage('assets/logo.jpg'),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  'Reset your Password',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 30.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(FontAwesomeIcons.userLock),
                    hintText: 'New Password',
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 30.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(FontAwesomeIcons.userLock),
                    hintText: 'New Password',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 30.0, 25.0, 20.0),
              child: RaisedButton(
                onPressed: () {},
                child: Text('Proceed'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
