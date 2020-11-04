import 'package:flutter/material.dart';
import 'package:mindsling_student/bottomNavigationBar.dart';
import 'package:mindsling_student/bottomAppBar.dart';
import 'package:mindsling_student/pages/BottomNavbarPages/More_Pages/Live_Sessions/livesession.dart';
import 'package:mindsling_student/pages/BottomNavbarPages/More_Pages/more.dart';
import 'package:mindsling_student/pages/BottomNavbarPages/More_Pages/privacyPolicy.dart';
import 'package:mindsling_student/pages/BottomNavbarPages/More_Pages/terms_conditions.dart';
import 'package:mindsling_student/pages/BottomNavbarPages/More_Pages/Settings/settings.dart';
import 'package:mindsling_student/pages/BottomNavbarPages/about_us.dart';
import 'package:mindsling_student/pages/BottomNavbarPages/profile.dart';
import 'package:mindsling_student/pages/BottomNavbarPages/create_post.dart';
import 'package:mindsling_student/pages/Home/Classes/classes.dart';
import 'package:mindsling_student/pages/Home/Classmates/classmates.dart';
import 'package:mindsling_student/pages/Home/Classmates/classmates_chat.dart';
import 'package:mindsling_student/pages/Home/Event/create_event.dart';
import 'package:mindsling_student/pages/Home/HomeWork/homework_detail.dart';
import 'package:mindsling_student/pages/Home/VideoLectures/videolectures.dart';
import 'package:mindsling_student/pages/Home/Event/event.dart';
import 'package:mindsling_student/pages/Home/Tutor/tutor.dart';
import 'package:mindsling_student/pages/login.dart';
import 'package:mindsling_student/pages/resetPassword.dart';
import 'package:mindsling_student/pages/signup.dart';
import 'package:mindsling_student/pages/forgotPassword.dart';
import 'package:mindsling_student/pages/Home/home.dart';
import 'package:mindsling_student/pages/Home/HomeWork/homework.dart';
import 'package:mindsling_student/pages/Home/Games/games.dart';
import 'package:mindsling_student/pages/Home/Exams/exams.dart';
import 'package:mindsling_student/pages/notifications.dart';
import 'package:mindsling_student/pages/BottomNavbarPages/More_Pages/Live_Sessions/meetingdetails.dart';
import 'package:mindsling_student/size_config.dart';

void main() => runApp(LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              theme: ThemeData(fontFamily: 'Poppins'),
              initialRoute: '/',
              routes: {
                '/': (context) => Login(),
                '/signup': (context) => SignUp(),
                '/forgotPassword': (context) => ForgotPassword(),
                '/resetPassword': (context) => ResetPassword(),
                '/bottomBar': (context) => BottomNavBar(),
                '/home': (context) => Home(),
                '/homework': (context) => HomeWork(),
                '/homework_detail': (context) => HomeWorkDetail(),
                '/classes': (context) => Classes(),
                '/games': (context) => Games(),
                '/exams': (context) => Exams(),
                '/videolectures': (context) => VideoLectures(),
                '/events': (context) => Events(),
                '/tutor': (context) => Tutor(),
                '/create_post': (context) => CreatePost(),
                '/create_event': (context) => CreateEvent(),
                '/profile': (context) => UpdateProfile(),
                '/more': (context) => MorePages(),
                '/classmates': (context) => ClassMates(),
                '/chat': (context) => Chat(),
                '/notifications': (context) => Notifications(),
                '/settings': (context) => Settings(),
                '/livesession': (context) => LiveSessions(),
                '/meetingdetails': (context) => MeetingDetails(),
                '/privacyPolicy': (context) => PrivacyPolicy(),
                '/termsandconditions': (context) => TermsAndCondtions(),
                '/about_us': (context) => AboutUs(),
              },
            );
          },
        );
      },
    ));
