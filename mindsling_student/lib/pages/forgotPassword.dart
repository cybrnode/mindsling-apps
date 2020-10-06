import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                  'Forgot your Password',
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
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'You will receive code on phone number',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 30.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(FontAwesomeIcons.chalkboardTeacher),
                    hintText: 'Roll Number',
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 30.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(FontAwesomeIcons.phoneAlt),
                    hintText: 'Phone no',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 30.0, 25.0, 20.0),
              child: RaisedButton(
                onPressed: () {},
                child: Text('Send Password'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
