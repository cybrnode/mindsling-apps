import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindsling_student/backend/student.dart';
import 'package:mindsling_student/bottomNavigationBar.dart';
import 'package:mindsling_student/size_config.dart';
import 'package:mindsling_student/styling.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mindsling_student/backend/upload.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:mindsling_student/utils.dart' as utils;

class SignUp extends StatefulWidget {
  SignUp({Key key, this.url}) : super(key: key);

  final String url;
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = false;
  String _name;
  String _email;
  String _className;
  String _school;
  String _rollNumber;
  String _password;
  String _profilePicture;
  String classdropdownValue = 'Select Class';
  String secdropdownValue = 'Select Section';
  final picker = ImagePicker();
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
          padding: const EdgeInsets.all(25.0),
          child: Container(
            // color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 4 * SizeConfig.heightMultiplier,
                ),
                InkResponse(
                    child: Container(
                      child: CircleAvatar(
                        radius: 40,
                        child: Image.asset('assets/icons/upload.png'),
                        backgroundColor: Colors.grey[300],
                      ),
                    ),
                    onTap: () async {
                      var file =
                          await picker.getImage(source: ImageSource.gallery);
                      if (file != null)
                        Upload.pictureUpload(file.path);
                      else
                        Navigator.popAndPushNamed(context, '/signup');
                    }),
                SizedBox(height: 1 * SizeConfig.heightMultiplier),
                Text(
                  'Profile Picture',
                  style: TextStyle(fontSize: 2.64 * SizeConfig.textMultiplier),
                ),
                SizedBox(height: 3 * SizeConfig.heightMultiplier),
                Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      Container(
                        child: TextFormField(
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
                          validator: (name) {
                            if (name.isEmpty)
                              return 'Please enter your name.';
                            else
                              return null;
                          },
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        child: TextFormField(
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
                          validator: (rollNumber) {
                            if (rollNumber.isEmpty)
                              return 'Please enter your roll number.';
                            else
                              return null;
                          },
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            // flex: 4,
                            child: DropdownButton<String>(
                              icon: Icon(Icons.arrow_drop_down),
                              isExpanded: true,
                              value: classdropdownValue,
                              iconSize: 24,
                              elevation: 0,
                              style: TextStyle(color: Colors.black),
                              underline: Container(
                                height: 2,
                                color: AppTheme.appBackgroundColor,
                              ),
                              onChanged: (String newValue) {
                                setState(() {
                                  classdropdownValue = newValue;
                                });
                                this._className = classdropdownValue;
                              },
                              items: <String>[
                                'Select Class',
                                '1st',
                                '2nd',
                                '3rd',
                                '8th'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: SizedBox(
                                      width: 100,
                                      child: Text(value,
                                          textAlign: TextAlign.center)),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        child: TextFormField(
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
                          validator: (email) {
                            if (!validateEmail(email) || email.isEmpty)
                              return 'Please enter a valid email address';
                            else
                              return null;
                          },
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        child: TextFormField(
                          obscureText: !this._showPassword,
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
                            suffixIcon: IconButton(
                              icon: Icon(Icons.remove_red_eye,
                                  color: this._showPassword
                                      ? AppTheme.appBackgroundColor
                                      : AppTheme.subTextColor),
                              onPressed: () {
                                setState(() =>
                                    this._showPassword = !this._showPassword);
                              },
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.teal[400]),
                            ),
                            hintText: 'Password',
                          ),
                          validator: (password) {
                            if (password.isEmpty || password.length < 8)
                              return 'Password should be at least 8 characters.';
                            else
                              return null;
                          },
                        ),
                      ),
                    ],
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
                      Student s1 = new Student(
                        name: this._name,
                        className: this._className,
                        rollNumber: this._rollNumber,
                        password: this._password,
                        email: this._email,
                      );
                      s1.register().then((String token) async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        prefs.setString('token', token);

                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    BottomNavBar()),
                            (Route<dynamic> route) => false);
                      }).catchError((e) {
                        // _error = e;
                        // alertMsg(context);
                      });
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

  String state = "";
  bool validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    return (!regex.hasMatch(value)) ? false : true;
  }

  // void alertMsg(BuildContext context) {
  //   var alertDialog = AlertDialog(
  //     title: Text("Login Failed"),
  //     content: Text(
  //       _error,
  //       maxLines: 3,
  //     ),
  //   );
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return alertDialog;
  //       });
  // }
}
