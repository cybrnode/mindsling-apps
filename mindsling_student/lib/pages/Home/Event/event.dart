import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindsling_student/size_config.dart';
import 'package:mindsling_student/styling.dart';

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
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
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(
              5.2 / (SizeConfig.widthMultiplier * SizeConfig.heightMultiplier),
            ),
            child: Column(
              children: [
                // Container(
                //   height: 20.0,
                //   width: MediaQuery.of(context).size.width,
                // ),
                Column(
                  children: [
                    SizedBox(height: 3.64 * SizeConfig.heightMultiplier),
                    Center(
                      child: Text(
                        'Event',
                        style: AppTheme.title,
                      ),
                    ),
                    SizedBox(height: 3.64 * SizeConfig.heightMultiplier),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 1.85 * SizeConfig.widthMultiplier,
                          vertical: 0.97 * SizeConfig.heightMultiplier),
                      child: Container(
                        child: ButtonBar(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ButtonTheme(
                              minWidth: MediaQuery.of(context).size.width / 4,
                              height: 41.0,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(21.0),
                                ),
                                onPressed: () {},
                                color: Colors.teal[400],
                                child: Text(
                                  'Today',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            ButtonTheme(
                              minWidth: MediaQuery.of(context).size.width / 4,
                              height: 47.0,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(21.0),
                                ),
                                onPressed: () {},
                                highlightColor: Colors
                                    .teal[400], //Replace with actual colors
                                color: Colors.white,
                                // color: Colors.teal[400],
                                child: Text(
                                  'Up coming',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                            ButtonTheme(
                              minWidth: MediaQuery.of(context).size.width / 4,
                              height: 47.0,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(21.0),
                                ),
                                onPressed: () {},
                                color: Colors.white,
                                child: Text(
                                  'Previous',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 4 * SizeConfig.heightMultiplier),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 2.5 * SizeConfig.widthMultiplier,
                          vertical: 1.2 * SizeConfig.heightMultiplier),
                      child: Column(
                        children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5 * SizeConfig.widthMultiplier,
                                  vertical: 1.82 * SizeConfig.heightMultiplier),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                // mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: FittedBox(
                                          child: Text(
                                            'School dance',
                                            style: AppTheme.eventTitle,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 1 * SizeConfig.heightMultiplier,
                                  ),
                                  Expanded(
                                    // mainAxisAlignment:
                                    //     MainAxisAlignment.spaceBetween,
                                    child: Text(
                                      'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.',
                                      style: AppTheme.eventText,
                                    ),
                                    // Spacer(),
                                  ),
                                  Container(
                                    child: Row(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      // mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Flexible(
                                          flex: 2,
                                          child: Icon(
                                            FontAwesomeIcons.clock,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Flexible(
                                          flex: 4,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 1.85 *
                                                    SizeConfig.widthMultiplier,
                                                vertical: 0.97 *
                                                    SizeConfig
                                                        .heightMultiplier),
                                            child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                '18-01-20 : 9:20 am',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            width: 375.0,
                            height: 165.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11.0),
                              gradient: LinearGradient(
                                begin: Alignment(0.0, -1.0),
                                end: Alignment(0.0, 1.0),
                                colors: [
                                  const Color(0x5c000000),
                                  const Color(0xff000000)
                                ],
                                stops: [0.0, 1.0],
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5 * SizeConfig.widthMultiplier,
                                  vertical: 1.82 * SizeConfig.heightMultiplier),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                // mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: FittedBox(
                                          child: Text(
                                            'School dance',
                                            style: AppTheme.eventTitle,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 1 * SizeConfig.heightMultiplier,
                                  ),
                                  Expanded(
                                    // mainAxisAlignment:
                                    //     MainAxisAlignment.spaceBetween,
                                    child: Text(
                                      'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.',
                                      style: AppTheme.eventText,
                                    ),
                                    // Spacer(),
                                  ),
                                  Container(
                                    child: Row(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      // mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Flexible(
                                          flex: 2,
                                          child: Icon(
                                            FontAwesomeIcons.clock,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Flexible(
                                          flex: 4,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 1.85 *
                                                    SizeConfig.widthMultiplier,
                                                vertical: 0.97 *
                                                    SizeConfig
                                                        .heightMultiplier),
                                            child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                '18-01-20 : 9:20 am',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            width: 375.0,
                            height: 165.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11.0),
                              gradient: LinearGradient(
                                begin: Alignment(0.0, -1.0),
                                end: Alignment(0.0, 1.0),
                                colors: [
                                  const Color(0x5c000000),
                                  const Color(0xff000000)
                                ],
                                stops: [0.0, 1.0],
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5 * SizeConfig.widthMultiplier,
                                  vertical: 1.82 * SizeConfig.heightMultiplier),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                // mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: FittedBox(
                                          child: Text(
                                            'School dance',
                                            style: AppTheme.eventTitle,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 1 * SizeConfig.heightMultiplier,
                                  ),
                                  Expanded(
                                    // mainAxisAlignment:
                                    //     MainAxisAlignment.spaceBetween,
                                    child: Text(
                                      'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.',
                                      style: AppTheme.eventText,
                                    ),
                                    // Spacer(),
                                  ),
                                  Container(
                                    child: Row(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      // mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Flexible(
                                          flex: 2,
                                          child: Icon(
                                            FontAwesomeIcons.clock,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Flexible(
                                          flex: 4,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 1.85 *
                                                    SizeConfig.widthMultiplier,
                                                vertical: 0.97 *
                                                    SizeConfig
                                                        .heightMultiplier),
                                            child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                '18-01-20 : 9:20 am',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            width: 375.0,
                            height: 165.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11.0),
                              gradient: LinearGradient(
                                begin: Alignment(0.0, -1.0),
                                end: Alignment(0.0, 1.0),
                                colors: [
                                  const Color(0x5c000000),
                                  const Color(0xff000000)
                                ],
                                stops: [0.0, 1.0],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4 * SizeConfig.heightMultiplier),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
