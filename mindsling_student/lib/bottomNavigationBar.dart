import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindsling_student/pages/BottomNavbarPages/More_Pages/more.dart';
import 'package:mindsling_student/pages/BottomNavbarPages/create_post.dart';
import 'package:mindsling_student/pages/BottomNavbarPages/profile.dart';
import 'package:mindsling_student/pages/Home/Classmates/classmates.dart';
import 'package:mindsling_student/pages/Home/home.dart';
import 'package:mindsling_student/size_config.dart';
import 'package:mindsling_student/styling.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      // floatingActionButton: Container(
      //   width: 45,
      //   height: 40,
      //   child: FloatingActionButton(
      //     elevation: 0.0,
      //     backgroundColor: Colors.white,
      //     shape: new CircleBorder(),
      //     onPressed: () {
      //       Navigator.pushNamed(context, '/create_post');
      //     },
      //     child: ImageIcon(
      //       AssetImage(
      //         'assets/icons/Icon awesome-plus-circle.png',
      //       ),
      //       color: AppTheme.subTextColor,
      //     ),
      //   ),
      // ),
      bottomNavigationBar: BottomAppBar(
        // shape: CircularNotchedRectangle(),
        // notchMargin: 3,
        // clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/icons/Icon feather-home.png',
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/icons/Icon ionic-md-chatboxes.png',
                ),
              ),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/icons/Icon awesome-plus-circle.png',
                ),
              ),
              label: 'Create Post',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/icons/Icon feather-user.png',
                ),
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/icons/Icon feather-more-horizontal.png',
                ),
              ),
              label: 'More',
            ),
          ],
          selectedFontSize: 1.5 * SizeConfig.textMultiplier,
          unselectedFontSize: 1.5 * SizeConfig.textMultiplier,
          selectedItemColor: Colors.teal[400],
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
        ),
        color: Colors.white,
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    Home(),
    ClassMates(),
    CreatePost(),
    UpdateProfile(),
    MorePages(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
