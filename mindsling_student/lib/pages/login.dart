import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindsling_student/size_config.dart';
import 'package:mindsling_student/styling.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                Column(
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      child: TextField(
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
                      ),
                    ),
                    SizedBox(height: 6 * SizeConfig.heightMultiplier),
                    Container(
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.all(1 * SizeConfig.heightMultiplier),
                          prefixIcon: ImageIcon(
                            AssetImage('assets/icons/password.png'),
                            color: AppTheme.iconColor,
                          ),
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ],
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
                      Navigator.pushReplacementNamed(context, '/bottomBar');
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
}
