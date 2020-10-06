import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 6.5,
              width: MediaQuery.of(context).size.width,
              child: Image(
                image: AssetImage('assets/logo.jpg'),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(30.0, 30.0, 15.0, 10.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.blue,
                ),
              ),
            ),
            Text(
              'Profile Picture',
              style: TextStyle(fontSize: 20.0),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 30.0, 25.0, 30.0),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(FontAwesomeIcons.userGraduate),
                    hintText: 'Name',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 30.0),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(FontAwesomeIcons.chalkboardTeacher),
                    hintText: 'Roll Number',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 0, 25.0, 30.0),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(FontAwesomeIcons.doorClosed),
                    hintText: 'Class name',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 0, 25.0, 20.0),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(FontAwesomeIcons.phoneAlt),
                    hintText: 'Phone no',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 0, 25.0, 30.0),
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
              padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 20.0),
              child: RaisedButton(
                onPressed: () {},
                child: Text('Sign Up'),
              ),
            ),
            Text('Already have an account? Login')
          ],
        ),
      ),
    );
  }
}
