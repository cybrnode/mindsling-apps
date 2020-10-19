import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindsling_student/styling.dart';

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
                Column(
                  children: [
                    Center(
                      child: Text(
                        'Classes',
                        style: AppTheme.title,
                      ),
                    ),
                    Container(
                      height: 40.0,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Container(
                      child: AspectRatio(
                        aspectRatio: 4 / 2,
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
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
                      child: AspectRatio(
                        aspectRatio: 4 / 2,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.sta,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Text('Monday', style: AppTheme.headerText),
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
                      child: AspectRatio(
                        aspectRatio: 4 / 2,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.sta,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Text('Monday', style: AppTheme.headerText),
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
                      child: AspectRatio(
                        aspectRatio: 4 / 2,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.sta,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Text('Monday', style: AppTheme.headerText),
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
