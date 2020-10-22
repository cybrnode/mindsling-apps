import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindsling_student/size_config.dart';
import 'package:mindsling_student/styling.dart';

class HomeWorkDetail extends StatefulWidget {
  @override
  _HomeWorkDetailState createState() => _HomeWorkDetailState();
}

class _HomeWorkDetailState extends State<HomeWorkDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
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
        child: Column(
          children: <Widget>[
            Container(
              height: 30.0,
              width: MediaQuery.of(context).size.width,
            ),
            Column(
              children: [
                SizedBox(height: 10.0),
                Center(
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: const Color(0xfffe0000),
                        height: 1.3888888888888888,
                      ),
                      children: [
                        TextSpan(
                          text: 'Home Work',
                          style: AppTheme.title,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.sta,
                            mainAxisAlignment: MainAxisAlignment.center,
                            // mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('English', style: AppTheme.headerText2),
                                  Spacer(
                                    flex: 3,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.clock,
                                    color: Colors.grey[400],
                                    size: 18,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      ' 8 am - 9 am',
                                      style: TextStyle(
                                        color: Colors.grey[400],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color: Colors.grey,
                                height: 50.0,
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    flex: 2,
                                    child: Text(
                                      'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 15,
                                        color: const Color(0xff707070),
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                // mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    flex: 2,
                                    child: Text(
                                      'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 15,
                                        color: const Color(0xff707070),
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                // mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    flex: 2,
                                    child: Text(
                                      'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 15,
                                        color: const Color(0xff707070),
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    flex: 2,
                                    child: Text(
                                      'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 15,
                                        color: const Color(0xff707070),
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                // mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    flex: 2,
                                    child: Text(
                                      'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 15,
                                        color: const Color(0xff707070),
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                // mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    flex: 2,
                                    child: Text(
                                      'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 15,
                                        color: const Color(0xff707070),
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  width: 118.4 * SizeConfig.widthMultiplier,
                  height: 117.89 * SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: const Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x21000000),
                        offset: Offset(0, 3),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
