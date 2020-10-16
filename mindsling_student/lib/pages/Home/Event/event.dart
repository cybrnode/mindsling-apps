import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      appBar: AppTheme.appBar,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                // Container(
                //   height: 20.0,
                //   width: MediaQuery.of(context).size.width,
                // ),
                Column(
                  children: [
                    Center(
                      child: Text(
                        'Event',
                        style: AppTheme.title,
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 25,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Container(
                      child: ButtonBar(
                        mainAxisSize: MainAxisSize
                            .min, // this will take space as minimum as posible(to center)
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: MediaQuery.of(context).size.width / 4,
                            height: 41.0,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/home');
                              },
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
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              onPressed: () {},
                              highlightColor:
                                  Colors.teal[400], //Replace with actual colors
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
                                borderRadius: BorderRadius.circular(18.0),
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
                    Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  flex: 3,
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'School dance',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 19,
                                        color: const Color(0xfff9f9f9),
                                        height: 1.9473684210526316,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 3,
                                  child: SizedBox(
                                    width: 365.0,
                                    height: 64.0,
                                    child: Text(
                                      'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 14,
                                        color: const Color(0xffffffff),
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  child: Container(
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
                                          flex: 2,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
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
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  flex: 3,
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'School dance',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 19,
                                        color: const Color(0xfff9f9f9),
                                        height: 1.9473684210526316,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 3,
                                  child: SizedBox(
                                    width: 365.0,
                                    height: 64.0,
                                    child: Text(
                                      'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 14,
                                        color: const Color(0xffffffff),
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  child: Container(
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
                                          flex: 2,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
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
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  flex: 3,
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'School dance',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 19,
                                        color: const Color(0xfff9f9f9),
                                        height: 1.9473684210526316,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 3,
                                  child: SizedBox(
                                    width: 365.0,
                                    height: 64.0,
                                    child: Text(
                                      'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 14,
                                        color: const Color(0xffffffff),
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  child: Container(
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
                                          flex: 2,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
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
