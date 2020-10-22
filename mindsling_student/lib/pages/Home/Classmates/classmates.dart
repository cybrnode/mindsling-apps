import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindsling_student/styling.dart';

class ClassMates extends StatefulWidget {
  @override
  _ClassMatesState createState() => _ClassMatesState();
}

class _ClassMatesState extends State<ClassMates> {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Classmates',
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/logo.jpg'),
                                  ),
                                ],
                              ),
                              Text(
                                'Gulf',
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/logo.jpg'),
                                  ),
                                ],
                              ),
                              Text(
                                'Gulf',
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/logo.jpg'),
                                  ),
                                ],
                              ),
                              Text(
                                'Gulf',
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/logo.jpg'),
                                  ),
                                ],
                              ),
                              Text(
                                'Gulf',
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/logo.jpg'),
                                  ),
                                ],
                              ),
                              Text(
                                'Gulf',
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: 140.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x14000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Messages',
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Flexible(
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/logo.jpg'),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Flexible(
                                  child: Row(
                                    children: [
                                      FittedBox(
                                        child: Text(
                                          'Gulf Doe',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Hi! How are you?',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: const Color(0xffa9b9c5),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '6 Tue, 3:45 pm',
                                style: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    width: 391.0,
                    height: 61.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffa9b9c5)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Flexible(
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/logo.jpg'),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Flexible(
                                  child: Row(
                                    children: [
                                      FittedBox(
                                        child: Text(
                                          'Gulf Doe',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Hi! How are you?',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: const Color(0xffa9b9c5),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '6 Tue, 3:45 pm',
                                style: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    width: 391.0,
                    height: 61.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffa9b9c5)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
