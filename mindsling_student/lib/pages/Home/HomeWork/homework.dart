import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindsling_student/size_config.dart';
import 'package:mindsling_student/styling.dart';

class HomeWork extends StatefulWidget {
  @override
  _HomeWorkState createState() => _HomeWorkState();
}

class _HomeWorkState extends State<HomeWork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        title: Image.asset(
          'assets/mind-01_3.png',
          fit: BoxFit.fill,
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.bell),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 4.62 * SizeConfig.heightMultiplier),
          Column(
            children: [
              FittedBox(
                child: Text(
                  'Home Work',
                  style: AppTheme.title,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 4.63 * SizeConfig.widthMultiplier,
                    vertical: 3 * SizeConfig.heightMultiplier),
                child: Column(
                  children: <Widget>[
                    Card(
                      child: ListTile(
                        title: Text(
                          'English',
                        ),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          Navigator.pushNamed(context, '/homework_detail');
                        },
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text(
                          'Math',
                        ),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          Navigator.pushNamed(context, '/homework_detail');
                        },
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text(
                          'Biology',
                        ),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          Navigator.pushNamed(context, '/homework_detail');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
