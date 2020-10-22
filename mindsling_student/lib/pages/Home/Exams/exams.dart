import 'package:flutter/material.dart';
import 'package:mindsling_student/styling.dart';
import 'package:mindsling_student/size_config.dart';

class Exams extends StatefulWidget {
  @override
  _ExamsState createState() => _ExamsState();
}

class _ExamsState extends State<Exams> {
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
                        'Exams',
                        style: AppTheme.title,
                      ),
                    ),
                    SizedBox(
                      height: 4.85 * SizeConfig.heightMultiplier,
                    ),
                    Container(
                      child: AspectRatio(
                        aspectRatio: 4.5 / 1,
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.7 * SizeConfig.widthMultiplier,
                                vertical: 3 * SizeConfig.heightMultiplier),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Flexible(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      FittedBox(
                                          child: Text('English',
                                              style: AppTheme.headerText)),
                                      FittedBox(
                                        child: Text(
                                          '6 Tue, 12:00PM',
                                          style: AppTheme.subText,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: AspectRatio(
                        aspectRatio: 4.5 / 1,
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.7 * SizeConfig.widthMultiplier,
                                vertical: 3 * SizeConfig.heightMultiplier),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Flexible(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      FittedBox(
                                          child: Text('Math',
                                              style: AppTheme.headerText)),
                                      FittedBox(
                                        child: Text('6 Tue, 12:00PM',
                                            style: AppTheme.subText),
                                      ),
                                    ],
                                  ),
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
