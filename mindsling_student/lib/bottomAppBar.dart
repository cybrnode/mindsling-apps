import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindsling_student/pages/BottomNavbarPages/More_Pages/more.dart';
import 'package:mindsling_student/pages/BottomNavbarPages/create_post.dart';
import 'package:mindsling_student/pages/BottomNavbarPages/profile.dart';
import 'package:mindsling_student/pages/Home/Classmates/classmates.dart';
import 'package:mindsling_student/pages/Home/home.dart';
import 'package:mindsling_student/styling.dart';

class MyBottomAppBar extends StatefulWidget {
  @override
  _MyBottomAppBarState createState() => _MyBottomAppBarState();
}

class _MyBottomAppBarState extends State<MyBottomAppBar> {
  int currentTab = 0;
  final List<Widget> screens = [
    Home(),
    ClassMates(),
    CreatePost(),
    UpdateProfile(),
    MorePages(),
  ];

  Widget currentScreen = Home();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
        elevation: 0.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Image.asset(
                    'assets/icons/Icon feather-home.png',
                    color: currentTab != 0
                        ? AppTheme.subTextColor
                        : AppTheme.appBackgroundColor,
                  ),
                  onPressed: () {
                    setState(
                      () {
                        currentScreen = Home();
                        currentTab = 0;
                      },
                    );
                  }),
              Text('Home'),

              IconButton(
                  icon: Image.asset(
                    'assets/icons/Icon feather-home.png',
                    color: currentTab != 1
                        ? AppTheme.subTextColor
                        : AppTheme.appBackgroundColor,
                  ),
                  onPressed: () {
                    setState(
                      () {
                        currentScreen = ClassMates();
                        currentTab = 1;
                      },
                    );
                  }),
              SizedBox(width: 40), // The dummy child
              IconButton(
                  icon: Image.asset(
                    'assets/icons/Icon feather-home.png',
                    color: currentTab != 3
                        ? AppTheme.subTextColor
                        : AppTheme.appBackgroundColor,
                  ),
                  onPressed: () {
                    setState(
                      () {
                        currentScreen = UpdateProfile();
                        currentTab = 3;
                      },
                    );
                  }),
              IconButton(
                  icon: Image.asset(
                    'assets/icons/Icon feather-home.png',
                    color: currentTab != 4
                        ? AppTheme.subTextColor
                        : AppTheme.appBackgroundColor,
                  ),
                  onPressed: () {
                    setState(
                      () {
                        currentScreen = MorePages();
                        currentTab = 4;
                      },
                    );
                  }),
            ],
          )
          // child: Row(
          //   // mainAxisSize: MainAxisSize.max,
          //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: <Widget>[
          //     MaterialButton(
          //       minWidth: 40,
          //       onPressed: () {
          // setState(
          //   () {
          //     currentScreen = Home();
          //     currentTab = 0;
          //   },
          // );
          //       },
          //       child: Column(
          //         children: [
          //           ImageIcon(
          //             AssetImage('assets/icons/Icon feather-home.png'),
          // color: currentTab != 0
          //     ? AppTheme.subTextColor
          //     : AppTheme.appBackgroundColor,
          //           ),
          //           Text(
          //             'Home',
          //             style: TextStyle(
          //               color: currentTab != 0
          //                   ? AppTheme.subTextColor
          //                   : AppTheme.appBackgroundColor,
          //             ),
          //           )
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
          // color: Colors.blueGrey,
          ),
    );
  }
}
