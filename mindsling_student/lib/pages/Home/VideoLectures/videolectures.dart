import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindsling_student/size_config.dart';
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
                    SizedBox(height: 1.5 * SizeConfig.heightMultiplier),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: 396.0,
                            height: 209.0,
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
                              padding: EdgeInsets.only(
                                  left: 4.63 * SizeConfig.widthMultiplier),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Math lecture',
                                  style: AppTheme.headerText2,
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
                          style: AppTheme.subHeadText,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1 * SizeConfig.heightMultiplier,
                    ),
                    Container(
                      // margin: EdgeInsets.symmetric(vertical: 20.0),
                      height: 450.0,
                      child: Padding(
                        padding: EdgeInsets.all(
                          5.2 /
                              (SizeConfig.widthMultiplier *
                                  SizeConfig.heightMultiplier),
                        ),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: false,
                          children: <Widget>[
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 2.42 *
                                              SizeConfig.heightMultiplier),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 400.0,
                                            height: 200.0,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5.0),
                                                topRight: Radius.circular(5.0),
                                              ),
                                              image: DecorationImage(
                                                image: const AssetImage(
                                                    'assets/eng.jpg'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 2 *
                                                    SizeConfig.widthMultiplier),
                                            child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                'English Lecture',
                                                style: AppTheme.vidCardText,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    width: 195.0,
                                    height: 250.0,
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
                            SizedBox(
                              width: 2.42 * SizeConfig.heightMultiplier,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 2.4 *
                                              SizeConfig.heightMultiplier),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 400.0,
                                            height: 200.0,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5.0),
                                                topRight: Radius.circular(5.0),
                                              ),
                                              image: DecorationImage(
                                                image: const AssetImage(
                                                    'assets/bio.jpg'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 2 *
                                                    SizeConfig.widthMultiplier),
                                            child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                'Biology Lecture',
                                                style: AppTheme.vidCardText,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    width: 195.0,
                                    height: 250.0,
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
