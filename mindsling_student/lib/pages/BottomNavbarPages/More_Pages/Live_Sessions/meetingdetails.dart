import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindsling_student/size_config.dart';
import 'package:mindsling_student/styling.dart';

class MeetingDetails extends StatefulWidget {
  @override
  _MeetingDetailsState createState() => _MeetingDetailsState();
}

class _MeetingDetailsState extends State<MeetingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
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
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Container(
                      height: 40.0,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Container(
                      width: 100 * SizeConfig.widthMultiplier,
                      height: 40 * SizeConfig.heightMultiplier,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.sta,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Flexible(
                                    flex: 4,
                                    child: FittedBox(
                                      child: Text(
                                        'Parent teacher meeting',
                                        style: AppTheme.headerText2,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Flexible(
                                    flex: 2,
                                    child: FittedBox(
                                      child: Text(
                                        '23-07-2020',
                                        style: AppTheme.subText,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 1 * SizeConfig.heightMultiplier),
                              Flexible(
                                child: Row(
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceBetween,
                                  children: [
                                    FittedBox(
                                      child: Text(
                                        'Requested Time: Today at 6pm',
                                        style: AppTheme.subText,
                                      ),
                                    ),
                                    // Spacer(),
                                  ],
                                ),
                              ),
                              SizedBox(height: 1 * SizeConfig.heightMultiplier),
                              Flexible(
                                child: Row(
                                  // crossAxisAlignment:
                                  //     CrossAxisAlignment.stretch,
                                  children: [
                                    FittedBox(
                                      child: Text(
                                        "Requested By: Alex John",
                                        style: AppTheme.subText,
                                      ),
                                    ),
                                    // Spacer(),
                                  ],
                                ),
                              ),
                              SizedBox(height: 1 * SizeConfig.heightMultiplier),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  FittedBox(
                                    child: Text(
                                      'Student: Norma Alex',
                                      style: AppTheme.subText,
                                    ),
                                  ),
                                  // Spacer(),
                                ],
                              ),
                              SizedBox(height: 7 * SizeConfig.heightMultiplier),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: ButtonTheme(
                                  minWidth:
                                      MediaQuery.of(context).size.width / 4,
                                  height: 7.5 * SizeConfig.heightMultiplier,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                    onPressed: () {},
                                    color: Colors.teal[400],
                                    child: Center(
                                      child: Text(
                                        'Start Now',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ), // Spacer(),
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
