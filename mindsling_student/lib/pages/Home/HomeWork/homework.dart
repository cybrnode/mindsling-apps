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
            onPressed: () {
              Navigator.pushNamed(context, '/notifications');
            },
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
              SizedBox(height: 4.62 * SizeConfig.heightMultiplier),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 3.63 * SizeConfig.widthMultiplier,
                    vertical: 2 * SizeConfig.heightMultiplier),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: AppTheme.boxShadow,
                      child: Card(
                        // shape: Border(
                        //   left: BorderSide(color: Colors.red, width: 5),
                        // ),
                        child: ListTile(
                          contentPadding:
                              EdgeInsets.only(left: 0.0, right: 10.0),
                          title: Text(
                            'English',
                          ),
                          leading: Container(
                            height: 25,
                            width: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(12.0),
                                bottomRight: Radius.circular(12.0),
                              ),
                              color: AppTheme.appBackgroundColor,
                            ),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            Navigator.pushNamed(context, '/homework_detail');
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: AppTheme.boxShadow,
                      child: Card(
                        child: ListTile(
                          contentPadding:
                              EdgeInsets.only(left: 0.0, right: 10.0),
                          title: Text(
                            'Math',
                          ),
                          leading: Container(
                            height: 25,
                            width: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                              ),
                              color: AppTheme.appBackgroundColor,
                            ),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            Navigator.pushNamed(context, '/homework_detail');
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: AppTheme.boxShadow,
                      child: Card(
                        child: ListTile(
                          contentPadding:
                              EdgeInsets.only(left: 0.0, right: 10.0),
                          title: Text(
                            'Biology',
                          ),
                          leading: Container(
                            height: 25,
                            width: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                              ),
                              color: AppTheme.appBackgroundColor,
                            ),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            Navigator.pushNamed(context, '/homework_detail');
                          },
                        ),
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
