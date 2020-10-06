import 'package:flutter/material.dart';
import 'package:mindsling_student/pages/login.dart';
import 'package:mindsling_student/pages/resetPassword.dart';
import 'package:mindsling_student/pages/signup.dart';
import 'package:mindsling_student/pages/forgotPassword.dart';
import 'package:mindsling_student/pages/home.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/login': (context) => Login(),
        '/signup': (context) => SignUp(),
        '/forgotPassword': (context) => ForgotPassword(),
        '/resetPassword': (context) => ResetPassword(),
        '/': (context) => Home(),
      },
    ));
