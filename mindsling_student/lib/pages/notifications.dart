import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindsling_student/size_config.dart';
import 'package:mindsling_student/styling.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
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
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 2 * SizeConfig.heightMultiplier),
                Column(
                  children: [
                    Center(
                      child: Text(
                        'Notifications',
                        style: AppTheme.title,
                      ),
                    ),
                    SizedBox(height: 2 * SizeConfig.heightMultiplier),
                    Container(
                      width: 100.0 * SizeConfig.widthMultiplier,
                      height: 9.0 * SizeConfig.heightMultiplier,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.sta,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Flexible(
                                    child: FittedBox(
                                      child: Text(
                                        'Video Lecture',
                                        style: AppTheme.headerText2,
                                      ),
                                    ),
                                  ),
                                  Spacer(
                                    flex: 2,
                                  ),
                                  FittedBox(
                                    child: Text(
                                      '23-07-2020',
                                      style: AppTheme.notifSubText,
                                    ),
                                  ),
                                ],
                              ),
                              // SizedBox(height: 10),
                              Row(
                                children: [
                                  // Spacer(),
                                  Flexible(
                                    child: FittedBox(
                                      child: Text(
                                        'You received a video lecture from teacher',
                                        style: AppTheme.notifSubText,
                                      ),
                                    ),
                                  ),
                                  // Spacer(),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
