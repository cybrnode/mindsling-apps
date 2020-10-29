import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindsling_student/size_config.dart';
import 'package:mindsling_student/styling.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          padding: EdgeInsets.all(3 * SizeConfig.heightMultiplier),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                  // height: MediaQuery.of(context).size.height / 8,
                  // width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/icons/Academios-App-Icon-1.png')),
              Container(
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 2.85 * SizeConfig.textMultiplier,
                    color: AppTheme.appBackgroundColor,
                  ),
                ),
              ),
              SizedBox(
                height: 1.9 * SizeConfig.heightMultiplier,
              ),
              Container(
                child: Center(
                  child: Text(
                    'You will receive code on phone number',
                    style: TextStyle(
                      fontSize: 2 * SizeConfig.textMultiplier,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
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
              ),
              SizedBox(height: 6 * SizeConfig.heightMultiplier),
              ButtonTheme(
                minWidth: MediaQuery.of(context).size.width,
                height: 8 * SizeConfig.heightMultiplier,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/resetPassword');
                  },
                  color: Colors.teal[400],
                  child: Text(
                    'Send Password',
                    style: TextStyle(
                      fontSize: 2.5 * SizeConfig.textMultiplier,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
