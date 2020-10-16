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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          'assets/mind-01_3.png',
          fit: BoxFit.fill,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                child: CircleAvatar(
                  radius: 40,
                  child: Icon(FontAwesomeIcons.camera, color: Colors.grey),
                  backgroundColor: Colors.grey[300],
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Profile Picture',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Container(
                child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    prefixIcon: Icon(
                      FontAwesomeIcons.userGraduate,
                      color: Colors.teal[400],
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal[400]),
                    ),
                    hintText: 'Name',
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    prefixIcon: Icon(
                      FontAwesomeIcons.chalkboardTeacher,
                      color: Colors.teal[400],
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal[400]),
                    ),
                    hintText: 'Roll Number',
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    prefixIcon: Icon(
                      FontAwesomeIcons.doorClosed,
                      color: Colors.teal[400],
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal[400]),
                    ),
                    hintText: 'Class name',
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.teal[400],
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal[400]),
                    ),
                    hintText: 'Email',
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    prefixIcon: Icon(
                      FontAwesomeIcons.userLock,
                      color: Colors.teal[400],
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal[400]),
                    ),
                    hintText: 'Password',
                  ),
                ),
              ),
              // Container(
              //   height: MediaQuery.of(context).size.height / 12,
              //   width: MediaQuery.of(context).size.width,
              // ),
              SizedBox(
                height: 20.0,
              ),
              ButtonTheme(
                minWidth: 280.0,
                height: 47.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  color: Colors.teal[400],
                  child: Text(
                    'Signup',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? "),
                  InkWell(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.teal[200],
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
