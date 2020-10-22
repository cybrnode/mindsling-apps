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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.plusCircle),
            label: 'Create Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
        selectedFontSize: 1.5 * SizeConfig.textMultiplier,
        unselectedFontSize: 1.5 * SizeConfig.textMultiplier,
        selectedItemColor: Colors.teal[400],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
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
