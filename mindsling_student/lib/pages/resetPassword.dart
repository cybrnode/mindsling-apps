import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindsling_student/size_config.dart';
import 'package:mindsling_student/styling.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
          child: Column(
            children: <Widget>[
              Container(
                // height: MediaQuery.of(context).size.height / 8,
                // width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/icons/NoPath - Copy (-4.png"),
              ),
              SizedBox(height: 30),
              Container(
                child: Text(
                  'Reset your Password',
                  style: TextStyle(
                    fontSize: 4 * SizeConfig.textMultiplier,
                    color: AppTheme.appBackgroundColor,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Column(
                // mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        prefixIcon: ImageIcon(
                          AssetImage('assets/icons/password.png'),
                          color: AppTheme.iconColor,
                        ),
                        hintText: 'New Password',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        prefixIcon: ImageIcon(
                          AssetImage('assets/icons/password.png'),
                          color: AppTheme.iconColor,
                        ),
                        hintText: ' Confirm Password',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              // Container(
              //   height: MediaQuery.of(context).size.height / 7,
              //   width: MediaQuery.of(context).size.width,
              // ),
              ButtonTheme(
                minWidth: MediaQuery.of(context).size.width,
                height: 47.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.teal[400],
                  child: Text(
                    'Proceed',
                    style: TextStyle(color: Colors.white),
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
