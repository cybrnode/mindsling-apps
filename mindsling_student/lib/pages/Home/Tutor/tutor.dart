import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindsling_student/styling.dart';
import 'package:mindsling_student/size_config.dart';

class Tutor extends StatefulWidget {
  @override
  _TutorState createState() => _TutorState();
}

class _TutorState extends State<Tutor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: EdgeInsets.symmetric(
                horizontal: 4.62 * SizeConfig.widthMultiplier,
                vertical: 2.42 * SizeConfig.heightMultiplier),
            child: Column(
              children: [
                Column(
                  children: [
                    Center(
                      child: Text(
                        'Tutor',
                        style: AppTheme.title,
                      ),
                    ),
                    Container(
                      height: 40.0,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Container(
                      width: 387.0,
                      height: 250.0,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.sta,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'English Class (22 Students)',
                                    style: AppTheme.headerText2,
                                  ),
                                  Spacer(),
                                  Text(
                                    '23-07-2020',
                                    style: TextStyle(color: Colors.grey[400]),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '1 hour class',
                                    style: TextStyle(color: Colors.grey[400]),
                                  ),
                                  // Spacer(),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$20/class",
                                    style: TextStyle(color: Colors.grey[400]),
                                  ),
                                  // Spacer(),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'daily at 8:00 am',
                                    style: TextStyle(color: Colors.grey[400]),
                                  ),
                                  // Spacer(),
                                ],
                              ),
                              SizedBox(height: 30),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ButtonTheme(
                                      minWidth: 280.0,
                                      height: 47.0,
                                      child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                        ),
                                        onPressed: () {},
                                        color: Colors.teal[400],
                                        child: Text(
                                          'Accept',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    // Spacer(),
                                  ],
                                ),
                              ),
                            ],
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
