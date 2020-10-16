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
                height: MediaQuery.of(context).size.height / 8,
                width: MediaQuery.of(context).size.width,
                child: Image(
                  image: AssetImage("assets/logo.jpg"),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.teal[400],
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
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Column(
                children: [
                  Container(
                    child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.teal[400],
                        ),
                        hintText: 'E-mail',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        prefixIcon: Icon(
                          FontAwesomeIcons.userLock,
                          color: Colors.teal[400],
                        ),
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 7,
                width: MediaQuery.of(context).size.width,
              ),
              ButtonTheme(
                minWidth: MediaQuery.of(context).size.width,
                height: 47.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/resetPassword');
                  },
                  color: Colors.teal[400],
                  child: Text(
                    'Send Password',
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
