import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindsling_student/size_config.dart';
import 'package:mindsling_student/styling.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          'assets/mind-01_3.png',
          fit: BoxFit.fill,
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.bell),
            onPressed: () {
              Navigator.pushNamed(context, '/notifications');
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              new Column(
                children: [
                  new Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.teal[400],
                  ),
                ],
              ),
              Padding(
                padding: new EdgeInsets.only(
                    top: 21.84 * SizeConfig.heightMultiplier,
                    right: 4.62 * SizeConfig.widthMultiplier,
                    left: 4.62 * SizeConfig.widthMultiplier),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Card(
                    child: AspectRatio(
                      aspectRatio: 4 / 2,
                      // height: 180.0,
                      // width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(child: Container()),
                          Expanded(
                            child: Column(
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: Text(
                                    'John Doe',
                                    style: AppTheme.homeCardText,
                                  ),
                                ),
                                Spacer(),
                                Flexible(
                                  flex: 4,
                                  child: Text(
                                    'Class 8th, B',
                                    style: AppTheme.homeCardsubText,
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
              Padding(
                padding: new EdgeInsets.only(
                    top: 21.84 * SizeConfig.heightMultiplier,
                    right: 4.62 * SizeConfig.widthMultiplier,
                    left: 4.62 * SizeConfig.widthMultiplier),
                child: FractionalTranslation(
                  translation: Offset(0.0, -0.4),
                  child: Align(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 7)
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage('assets/logo.jpg'),
                      ),
                    ),
                    alignment: FractionalOffset(0.5, 0.0),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: GridView.count(
              primary: false,
              padding: EdgeInsets.symmetric(
                  horizontal: 5.78 * SizeConfig.widthMultiplier,
                  vertical: 3.03 * SizeConfig.heightMultiplier),
              childAspectRatio: (24 / 18),
              crossAxisSpacing: 4.85 * SizeConfig.heightMultiplier,
              mainAxisSpacing: 9.25 * SizeConfig.widthMultiplier,
              crossAxisCount: 2,
              children: <Widget>[
                InkResponse(
                  child: Container(
                    // padding: EdgeInsets.symmetric(
                    //     horizontal: 1.85 * SizeConfig.widthMultiplier,
                    //     vertical: 0.97 * SizeConfig.heightMultiplier),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              // backgroundImage: AssetImage(
                              //   'assets/greyhome-05.png',
                              // ),
                              child: Image.asset('assets/icons/diary.png'),
                              backgroundColor: AppTheme.iconBGColor,
                              // backgroundColor: Colors.teal[100],
                            ),
                          ],
                        ),
                        Text("HomeWork"),
                      ],
                    ),
                    // color: Colors.teal[100],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/homework');
                  },
                ),
                InkResponse(
                  child: Container(
                    // padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              // backgroundImage:
                              //     AssetImage('assets/classes-02.png'),
                              // backgroundColor: Colors.white,
                              child: Image.asset('assets/icons/students.png'),

                              backgroundColor: AppTheme.iconBGColor,
                            ),
                          ],
                        ),
                        Text("Classes"),
                      ],
                    ), // color: Colors.teal[200],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/classes');
                  },
                ),
                InkResponse(
                  child: Container(
                    // padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              // backgroundImage:
                              //     AssetImage('assets/games-02.png'),
                              // backgroundColor: Colors.grey[200],
                              child: Image.asset('assets/icons/XMLID_344_.png'),
                              backgroundColor: AppTheme.iconBGColor,
                            ),
                          ],
                        ),
                        Text("Games"),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/games');
                  },
                ),
                InkResponse(
                  child: Container(
                    // padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              child: Image.asset('assets/icons/Layer 7.png'),
                              backgroundColor: AppTheme.iconBGColor,
                            ),
                          ],
                        ),
                        Text("Exams"),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/exams');
                  },
                ),
                InkResponse(
                  child: Container(
                    // padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              child: Image.asset(
                                  'assets/icons/Learning-Lecture-Education-Online-Book.png'),
                              backgroundColor: AppTheme.iconBGColor,
                            ),
                          ],
                        ),
                        Text("Video Lectures"),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/videolectures');
                  },
                ),
                InkResponse(
                  child: Container(
                    // padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              child: Image.asset(
                                  'assets/icons/Icon ionic-ios-notifications.png'),
                              backgroundColor: AppTheme.iconBGColor,
                            ),
                          ],
                        ),
                        Text("Tutor Notices"),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/tutornotices');
                  },
                ),
                InkResponse(
                  child: Container(
                    // padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              child: Image.asset('assets/icons/timeline.png'),
                              backgroundColor: AppTheme.iconBGColor,
                            ),
                          ],
                        ),
                        Text("Event"),
                      ],
                    ),
                    // color: Colors.teal[200],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/events');
                  },
                ),
                InkResponse(
                  child: Container(
                    // padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              child: Image.asset(
                                  'assets/icons/Icon awesome-chalkboard-teacher.png'),
                              backgroundColor: AppTheme.iconBGColor,
                            ),
                          ],
                        ),
                        Text("Tutor"),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/tutor');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
