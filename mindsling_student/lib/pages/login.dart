import 'package:flutter/material.dart';
import 'package:mindsling_student/bottomNavigationBar.dart';
import 'package:mindsling_student/pages/Home/home.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mindsling_student/backend/student.dart';
import 'package:mindsling_student/size_config.dart';
import 'package:mindsling_student/styling.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = false;
  String _email;
  String _password;
  String _error;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppTheme.appBarLogin,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(1 * SizeConfig.heightMultiplier),
          child: Padding(
            padding: EdgeInsets.all(3 * SizeConfig.heightMultiplier),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  height: 15 * SizeConfig.heightMultiplier,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/mind-01.png'),
                ),
                SizedBox(height: 9 * SizeConfig.heightMultiplier),
                Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Login',
                      style: AppTheme.loginText,
                    ),
                  ),
                ),
                SizedBox(height: 3.64 * SizeConfig.heightMultiplier),
                Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        child: TextFormField(
                          onChanged: (String email) {
                            this._email = email;
                          },
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.all(1 * SizeConfig.heightMultiplier),
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Colors.teal[400],
                            ),
                            hintText: 'E-mail',
                          ),
                          validator: (email) {
                            if (!validateEmail(email) || email.isEmpty)
                              return 'Please enter a valid email address';
                            else
                              return null;
                          },
                        ),
                      ),
                      SizedBox(height: 6 * SizeConfig.heightMultiplier),
                      Container(
                        child: TextFormField(
                          obscureText: !this._showPassword,
                          onChanged: (String password) {
                            this._password = password;
                          },
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.all(1 * SizeConfig.heightMultiplier),
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
                            hintText: 'Password',
                          ),
                          validator: (password) {
                            if (password.isEmpty)
                              return 'Please enter your password';
                            else
                              return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.4 * SizeConfig.heightMultiplier),
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    child: Text(
                      'Forgot password?',
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/forgotPassword');
                    },
                  ),
                ),
                SizedBox(height: 8 * SizeConfig.heightMultiplier),
                ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width,
                  height: 7 * SizeConfig.heightMultiplier,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    onPressed: () {
                      Student s1 = new Student(
                        password: this._password,
                        email: this._email,
                      );
                      s1.login().then((String token) async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        prefs.setString('token', token);

                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    BottomNavBar()),
                            (Route<dynamic> route) => false);
                      }).catchError((e) {
                        _error = e;
                        alertMsg(context);
                      });
                    },
                    color: Colors.teal[400],
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 10 * SizeConfig.heightMultiplier),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FittedBox(
                      child: Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          fontSize: 1.7 * SizeConfig.textMultiplier,
                        ),
                      ),
                    ),
                    InkWell(
                      child: FittedBox(
                        child: Text(
                          'Signup',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.teal[200],
                            fontSize: 1.7 * SizeConfig.textMultiplier,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/signup');
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

  bool validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    return (!regex.hasMatch(value)) ? false : true;
  }

  void alertMsg(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Login Failed"),
      content: Text(
        _error,
        maxLines: 3,
      ),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
