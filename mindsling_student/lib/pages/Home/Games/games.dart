import 'package:flutter/material.dart';
import 'package:mindsling_student/size_config.dart';
import 'package:mindsling_student/styling.dart';

class Games extends StatefulWidget {
  @override
  _GamesState createState() => _GamesState();
}

class _GamesState extends State<Games> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppTheme.appBar,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 4.63 * SizeConfig.widthMultiplier,
                vertical: 2.42 * SizeConfig.heightMultiplier),
            child: Column(
              children: [
                Column(
                  children: [
                    Center(
                      child: Text(
                        'Games',
                        style: AppTheme.title,
                      ),
                    ),
                    SizedBox(
                      height: 4.85 * SizeConfig.heightMultiplier,
                    ),
                    Container(
                      child: AspectRatio(
                        aspectRatio: 4 / 1,
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 3.47 * SizeConfig.widthMultiplier,
                                vertical: 1.80 * SizeConfig.heightMultiplier),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Cricket',
                                      style: AppTheme.headerText,
                                    ),
                                    Text('6 Tue, 12:00PM',
                                        style: AppTheme.subText),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Team A',
                                      style: AppTheme.rowText,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: AspectRatio(
                        aspectRatio: 4 / 1,
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 3.47 * SizeConfig.widthMultiplier,
                                vertical: 1.80 * SizeConfig.heightMultiplier),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Cricket',
                                      style: AppTheme.headerText,
                                    ),
                                    Text('6 Tue, 12:00PM',
                                        style: AppTheme.subText),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Team B',
                                      style: AppTheme.rowText,
                                    ),
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
