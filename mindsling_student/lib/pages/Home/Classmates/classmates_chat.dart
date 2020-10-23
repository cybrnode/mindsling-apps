import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindsling_student/styling.dart';
import 'package:mindsling_student/size_config.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/logo.jpg'),
            ),
            SizedBox(
              width: 4 * SizeConfig.widthMultiplier,
            ),
            FittedBox(
              child: Text(
                'Gulf Doe',
                style: AppTheme.rowText,
              ),
            ),
          ],
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.bell),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 3),
                  blurRadius: 9,
                ),
              ],
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, bottom: 10.0),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: <Widget>[
                          Container(
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: AppTheme.iconBGColor,
                              child: Icon(
                                Icons.arrow_drop_down_outlined,
                                color: AppTheme.iconColor,
                              ),
                            ),
                          ),
                          SizedBox(width: 3 * SizeConfig.widthMultiplier),
                          Expanded(
                            child: Container(
                              decoration: new BoxDecoration(
                                borderRadius: BorderRadius.circular(27.0),
                                color: const Color(0xffffffff),
                                border: Border.all(
                                  width: 1.0,
                                  color: const Color(0xff0034bb),
                                ),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  hintText: 'Type message...',
                                  contentPadding: EdgeInsets.only(
                                      left: 15, bottom: 11, top: 11, right: 10),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 1 * SizeConfig.widthMultiplier),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.send,
                                color: AppTheme.iconColor,
                              ),
                            ),
                          ),
                          SizedBox(width: 2 * SizeConfig.widthMultiplier),
                        ],
                      ),
                      Spacer(),
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        child: Icon(FontAwesomeIcons.camera,
                                            color: AppTheme.appBackgroundColor),
                                      ),
                                    ],
                                  ),
                                  Text('Photo', style: AppTheme.chatMenuText),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        child: Icon(FontAwesomeIcons.video,
                                            color: AppTheme.appBackgroundColor),
                                      ),
                                    ],
                                  ),
                                  Text('Video', style: AppTheme.chatMenuText),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        child: Icon(
                                            FontAwesomeIcons.locationArrow,
                                            color: AppTheme.appBackgroundColor),
                                      ),
                                    ],
                                  ),
                                  Text('Location',
                                      style: AppTheme.chatMenuText),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        child: Icon(
                                            FontAwesomeIcons.microphoneAlt,
                                            color: AppTheme.appBackgroundColor),
                                      ),
                                    ],
                                  ),
                                  Text('Voice', style: AppTheme.chatMenuText),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        child: Icon(FontAwesomeIcons.fileUpload,
                                            color: AppTheme.appBackgroundColor),
                                      ),
                                    ],
                                  ),
                                  Text('File', style: AppTheme.chatMenuText),
                                ],
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
          Column(
            children: [
              SizedBox(
                height: 4 * SizeConfig.heightMultiplier,
              ),
              Row(
                children: [
                  Spacer(flex: 2),
                  Flexible(
                    flex: 6,
                    child: Container(
                      width: 297.0,
                      height: 66.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: const Color(0xff01a89e),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Hi! How are you?",
                                style: AppTheme.chatText)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1 * SizeConfig.widthMultiplier,
                  ),
                  Flexible(
                    child: Container(
                      width: 25.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xff01a89e),
                      ),
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: AppTheme.appBackgroundColor,
                        child: Icon(FontAwesomeIcons.user, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4 * SizeConfig.heightMultiplier,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 2 * SizeConfig.widthMultiplier,
                  ),
                  Flexible(
                    child: Container(
                      width: 25.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: AppTheme.chatColor2,
                      ),
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: AppTheme.appBackgroundColor,
                        child: Icon(FontAwesomeIcons.user, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2 * SizeConfig.widthMultiplier,
                  ),
                  Flexible(
                    flex: 6,
                    child: Container(
                      width: 297.0,
                      height: 66.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: AppTheme.chatColor2,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Hi! fine thanks and you?",
                            style: AppTheme.chatText2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(flex: 2),
                ],
              ),
              SizedBox(
                height: 6 * SizeConfig.heightMultiplier,
              ),
              Text(
                'Monday, 10:40 am',
                style: AppTheme.chatTimeText,
              ),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              Row(
                children: [
                  Spacer(flex: 2),
                  Flexible(
                    flex: 6,
                    child: Container(
                      width: 297.0,
                      height: 66.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: const Color(0xff01a89e),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("I am also fine.Thanks!",
                                style: AppTheme.chatText)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1 * SizeConfig.widthMultiplier,
                  ),
                  Flexible(
                    child: Container(
                      width: 25.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xff01a89e),
                      ),
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: AppTheme.appBackgroundColor,
                        child: Icon(FontAwesomeIcons.user, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
