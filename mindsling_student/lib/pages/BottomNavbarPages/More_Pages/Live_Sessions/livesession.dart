import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindsling_student/size_config.dart';
import 'package:mindsling_student/styling.dart';

class LiveSessions extends StatefulWidget {
  @override
  _LiveSessionsState createState() => _LiveSessionsState();
}

class _LiveSessionsState extends State<LiveSessions> {
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
            onPressed: () {
              Navigator.pushNamed(context, '/notifications');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 20.0),
                Column(
                  children: [
                    Center(
                      child: Text(
                        'Live Sessions',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 19,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 3 * SizeConfig.heightMultiplier),
                    InkResponse(
                      onTap: () {
                        Navigator.pushNamed(context, '/meetingdetails');
                      },
                      child: Container(
                        width: 100.0 * SizeConfig.widthMultiplier,
                        height: 10.0 * SizeConfig.heightMultiplier,
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                                width: 5.0, color: AppTheme.appBackgroundColor),
                          ),
                          // borderRadius: BorderRadius.circular(8.0),
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
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.sta,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  child: Row(
                                    children: [
                                      Container(),
                                      FittedBox(
                                        child: Text(
                                          'Parent Teacher Meeting',
                                          style: AppTheme.headerText2,
                                        ),
                                      ),
                                      Spacer(),
                                      FittedBox(
                                        child: Text(
                                          '23-07-2020',
                                          style: TextStyle(
                                              color: Colors.grey[400],
                                              fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // SizedBox(height: 10),
                                Row(
                                  children: [
                                    // Spacer(),
                                    Flexible(
                                      flex: 3,
                                      child: FittedBox(
                                        child: Text(
                                            'You requested a meeting with Norma Alex teacher',
                                            style: AppTheme.notifSubText
                                            // textAlign: TextAlign.left,
                                            ),
                                      ),
                                    ),

                                    // Spacer(),
                                  ],
                                ),

                                Row(
                                  children: [
                                    // Spacer(),
                                    Flexible(
                                      flex: 2,
                                      child: Text(
                                        'Requested Time: Today at 6pm',
                                        style: AppTheme.shortNotifSubText,
                                        // textAlign: TextAlign.,
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
