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
            padding: const EdgeInsets.all(20.0),
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
                        aspectRatio: 4 / 1,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('English', style: AppTheme.headerText),
                                    Text(
                                      '6 Tue, 12:00PM',
                                      style: AppTheme.subText,
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
                            padding: const EdgeInsets.all(25.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Math', style: AppTheme.headerText),
                                    Text('6 Tue, 12:00PM',
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
