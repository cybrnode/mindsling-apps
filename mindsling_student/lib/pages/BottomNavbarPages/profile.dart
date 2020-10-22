import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindsling_student/size_config.dart';
import 'package:mindsling_student/styling.dart';

class UpdateProfile extends StatefulWidget {
  @override
  _UpdateProfileState createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
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
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
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
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 1 * SizeConfig.heightMultiplier),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          FontAwesomeIcons.chalkboardTeacher,
                          color: Colors.teal[400],
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal[400]),
                        ),
                        hintText: 'Roll Number',
                      ),
                    ),
                  ),
                  SizedBox(height: 1 * SizeConfig.heightMultiplier),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          FontAwesomeIcons.doorClosed,
                          color: Colors.teal[400],
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal[400]),
                        ),
                        hintText: 'Class name',
                      ),
                    ),
                  ),
                  SizedBox(height: 1 * SizeConfig.heightMultiplier),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          FontAwesomeIcons.phoneAlt,
                          color: Colors.teal[400],
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal[400]),
                        ),
                        hintText: 'Phone no',
                      ),
                    ),
                  ),
                  SizedBox(height: 1 * SizeConfig.heightMultiplier),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          FontAwesomeIcons.userLock,
                          color: Colors.teal[400],
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal[400]),
                        ),
                        hintText: 'Password',
                      ),
                    ),
                  ),
                  SizedBox(height: 3 * SizeConfig.heightMultiplier),
                  Container(
                    child: ButtonTheme(
                      minWidth: 280.0,
                      height: 47.0,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        color: Colors.teal[400],
                        child: Text(
                          'Update',
                          style: TextStyle(color: Colors.white),
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
    );
  }
}
