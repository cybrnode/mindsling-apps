import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindsling_student/styling.dart';
import 'package:mindsling_student/size_config.dart';

class Classes extends StatefulWidget {
  @override
  _ClassesState createState() => _ClassesState();
}

class _ClassesState extends State<Classes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
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
            padding: EdgeInsets.symmetric(
                horizontal: 3.6 * SizeConfig.widthMultiplier,
                vertical: 1.42 * SizeConfig.heightMultiplier),
            child: Column(
              children: [
                Column(
                  children: [
                    Center(
                      child: Text(
                        'Classes',
                        style: AppTheme.title,
                      ),
                    ),
                    SizedBox(height: 2.42 * SizeConfig.heightMultiplier),
                    Container(
                      decoration: AppTheme.boxShadow,
                      child: AspectRatio(
                        aspectRatio: 4 / 2,
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2.47 * SizeConfig.widthMultiplier,
                                vertical: 0.80 * SizeConfig.heightMultiplier),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.sta,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Monday',
                                      style: AppTheme.headerText,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'English',
                                      style: AppTheme.rowText,
                                    ),
                                    // Spacer(),
                                    Text('8 am - 9 am',
                                        style: AppTheme.subText),
                                  ],
                                ),
                                // Spacer(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'English',
                                      style: AppTheme.rowText,
                                    ),
                                    Spacer(),
                                    Text('8 am - 9 am',
                                        style: AppTheme.subText),
                                  ],
                                ),
                                // Spacer(),
                                Row(
                                  children: [
                                    Text(
                                      'English',
                                      style: AppTheme.rowText,
                                    ),
                                    Spacer(),
                                    Text('8 am - 9 am',
                                        style: AppTheme.subText),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: AppTheme.boxShadow,
                      child: AspectRatio(
                        aspectRatio: 4 / 2,
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 4.63 * SizeConfig.widthMultiplier,
                                vertical: 2.42 * SizeConfig.heightMultiplier),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.sta,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Text('Tuesday', style: AppTheme.headerText),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'English',
                                      style: AppTheme.rowText,
                                    ),
                                    // Spacer(),
                                    Text('8 am - 9 am',
                                        style: AppTheme.subText),
                                  ],
                                ),
                                // Spacer(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'English',
                                      style: AppTheme.rowText,
                                    ),
                                    Spacer(),
                                    Text('8 am - 9 am',
                                        style: AppTheme.subText),
                                  ],
                                ),
                                // Spacer(),
                                Row(
                                  children: [
                                    Text(
                                      'English',
                                      style: AppTheme.rowText,
                                    ),
                                    Spacer(),
                                    Text('8 am - 9 am',
                                        style: AppTheme.subText),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: AppTheme.boxShadow,
                      child: AspectRatio(
                        aspectRatio: 4 / 2,
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 3.47 * SizeConfig.widthMultiplier,
                                vertical: 1.80 * SizeConfig.heightMultiplier),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.sta,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Text('Wednesday',
                                        style: AppTheme.headerText),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'English',
                                      style: AppTheme.rowText,
                                    ),
                                    // Spacer(),
                                    Text('8 am - 9 am',
                                        style: AppTheme.subText),
                                  ],
                                ),
                                // Spacer(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'English',
                                      style: AppTheme.rowText,
                                    ),
                                    Spacer(),
                                    Text('8 am - 9 am',
                                        style: AppTheme.subText),
                                  ],
                                ),
                                // Spacer(),
                                Row(
                                  children: [
                                    Text(
                                      'English',
                                      style: AppTheme.rowText,
                                    ),
                                    Spacer(),
                                    Text('8 am - 9 am',
                                        style: AppTheme.subText),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: AppTheme.boxShadow,
                      child: AspectRatio(
                        aspectRatio: 4 / 2,
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 3.47 * SizeConfig.widthMultiplier,
                                vertical: 1.80 * SizeConfig.heightMultiplier),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.sta,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Text('Thursday',
                                        style: AppTheme.headerText),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'English',
                                      style: AppTheme.rowText,
                                    ),
                                    // Spacer(),
                                    Text('8 am - 9 am',
                                        style: AppTheme.subText),
                                  ],
                                ),
                                // Spacer(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'English',
                                      style: AppTheme.rowText,
                                    ),
                                    Spacer(),
                                    Text('8 am - 9 am',
                                        style: AppTheme.subText),
                                  ],
                                ),
                                // Spacer(),
                                Row(
                                  children: [
                                    Text(
                                      'English',
                                      style: AppTheme.rowText,
                                    ),
                                    Spacer(),
                                    Text('8 am - 9 am',
                                        style: AppTheme.subText),
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
