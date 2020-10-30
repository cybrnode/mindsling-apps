import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindsling_student/backend/student.dart';
import 'package:mindsling_student/size_config.dart';
import 'package:mindsling_student/styling.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String _name;
  String _email;
  String _className;
  String _school;
  String _rollNumber;
  String _password;
  String _profilePicture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
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
          padding: const EdgeInsets.all(15.0),
          child: Container(
            // color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 4 * SizeConfig.heightMultiplier,
                ),
                Container(
                  child: CircleAvatar(
                    radius: 40,
                    child: Image.asset('assets/icons/upload.png'),
                    backgroundColor: Colors.grey[300],
                  ),
                ),
                SizedBox(height: 1 * SizeConfig.heightMultiplier),
                Text(
                  'Profile Picture',
                  style: TextStyle(fontSize: 2.64 * SizeConfig.textMultiplier),
                ),
                SizedBox(height: 3 * SizeConfig.heightMultiplier),
                Container(
                  child: TextField(
                    onChanged: (String name) {
                      this._name = name;
                    },
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
                    onChanged: (String rollNumber) {
                      this._rollNumber = rollNumber;
                    },
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      prefixIcon: ImageIcon(
                        AssetImage('assets/icons/Group 623.png'),
                        color: AppTheme.iconColor,
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
                    onChanged: (String className) {
                      this._className = className;
                    },
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      prefixIcon: ImageIcon(
                        AssetImage('assets/icons/Icon awesome-building.png'),
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
                    onChanged: (String email) {
                      this._email = email;
                    },
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
                    onChanged: (String password) {
                      this._password = password;
                    },
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      prefixIcon: ImageIcon(
                        AssetImage('assets/icons/password.png'),
                        color: AppTheme.iconColor,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal[400]),
                      ),
                      hintText: 'Password',
                    ),
                  ),
                ),
                SizedBox(
                  height: 4 * SizeConfig.heightMultiplier,
                ),
                ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width,
                  height: 8 * SizeConfig.heightMultiplier,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    onPressed: () {
                      if (this._email == "" || this._email == null) {}

                      Student s1 = new Student(
                        name: this._name,
                        className: this._className,
                        rollNumber: this._rollNumber,
                        password: this._password,
                        email: this._email,
                      );
                      s1.register();
                      // Navigator.pushNamed(context, '/home');
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
      ),
    );
  }
}
