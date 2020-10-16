import 'package:flutter/material.dart';
import 'package:mindsling_student/styling.dart';

class VideoLectures extends StatefulWidget {
  @override
  _VideoLecturesState createState() => _VideoLecturesState();
}

class _VideoLecturesState extends State<VideoLectures> {
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
                        'Video Lectures',
                        style: AppTheme.title,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: 396.0,
                            height: 209.0,
                            padding: EdgeInsets.all(0.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.0),
                                topRight: Radius.circular(5.0),
                              ),
                              image: DecorationImage(
                                image: const AssetImage('assets/math.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Spacer(flex: 4),
                          Flexible(
                            flex: 5,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Math lecture',
                                  style: TextStyle(
                                    fontFamily: 'Poppins-bold',
                                    fontSize: 16,
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w500,
                                    height: 1.25,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      width: 396.0,
                      height: 325.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 25,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Other Lectures',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: const Color(0xff7a8fa6),
                              fontWeight: FontWeight.w500,
                              height: 1.25,
                            ),
                          )),
                    ),
                    SizedBox(height: 20),
                    Container(
                      // margin: EdgeInsets.symmetric(vertical: 20.0),
                      height: 200.0,
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: false,
                          children: <Widget>[
                            Container(
                              child: Container(
                                width: 195.0,
                                height: 204.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5.0),
                                    topRight: Radius.circular(5.0),
                                  ),
                                  image: DecorationImage(
                                    image: const AssetImage('assets/eng.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              width: 195.0,
                              height: 249.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5.0),
                                  topRight: Radius.circular(5.0),
                                ),
                                color: const Color(0xffffffff),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x29000000),
                                    offset: Offset(0, 3),
                                    blurRadius: 6,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Container(
                                width: 195.0,
                                height: 204.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5.0),
                                    topRight: Radius.circular(5.0),
                                  ),
                                  image: DecorationImage(
                                    image: const AssetImage('assets/bio.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              width: 195.0,
                              height: 249.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5.0),
                                  topRight: Radius.circular(5.0),
                                ),
                                color: const Color(0xffffffff),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x29000000),
                                    offset: Offset(0, 3),
                                    blurRadius: 6,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
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
