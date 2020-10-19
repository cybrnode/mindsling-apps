import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindsling_student/styling.dart';

class MorePages extends StatefulWidget {
  @override
  _MorePagesState createState() => _MorePagesState();
}

class _MorePagesState extends State<MorePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        children: <Widget>[
          SizedBox(height: 30),
          Center(
            child: Text(
              'More',
              style: AppTheme.title,
            ),
          ),
          SizedBox(height: 30),
          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(25),
              childAspectRatio: (29 / 20),
              crossAxisSpacing: 40,
              mainAxisSpacing: 40,
              crossAxisCount: 2,
              children: <Widget>[
                InkResponse(
                  child: Container(
                    padding: const EdgeInsets.all(8),
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
                              child: Icon(
                                Icons.settings,
                                color: AppTheme.iconColor,
                              ),
                              backgroundColor: AppTheme.iconBGColor,
                              // backgroundColor: Colors.teal[100],
                            ),
                          ],
                        ),
                        Text("Settings"),
                      ],
                    ),
                    // color: Colors.teal[100],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/settings');
                  },
                ),
                InkResponse(
                  child: Container(
                    padding: const EdgeInsets.all(8),
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
                              child: Icon(
                                FontAwesomeIcons.exclamationCircle,
                                color: AppTheme.iconColor,
                              ),
                              backgroundColor: AppTheme.iconBGColor,
                              // backgroundColor: Colors.teal[100],
                            ),
                          ],
                        ),
                        Text("About App"),
                      ],
                    ), // color: Colors.teal[200],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/about_us');
                  },
                ),
                InkResponse(
                  child: Container(
                    padding: const EdgeInsets.all(8),
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
                              // backgroundImage: AssetImage(
                              //   'assets/greyhome-05.png',
                              // ),
                              child: Icon(
                                FontAwesomeIcons.file,
                                color: AppTheme.iconColor,
                              ),
                              backgroundColor: AppTheme.iconBGColor,
                              // backgroundColor: Colors.teal[100],
                            ),
                          ],
                        ),
                        Text("Privacy Policy"),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/privacyPolicy');
                  },
                ),
                InkResponse(
                  child: Container(
                    padding: const EdgeInsets.all(8),
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
                              // backgroundImage: AssetImage(
                              //   'assets/greyhome-05.png',
                              // ),
                              child: Icon(
                                FontAwesomeIcons.file,
                                color: AppTheme.iconColor,
                              ),
                              backgroundColor: AppTheme.iconBGColor,
                              // backgroundColor: Colors.teal[100],
                            ),
                          ],
                        ),
                        Text("Terms & Conditions"),
                      ],
                    ),
                    // color: Colors.teal[200],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/termsandconditions');
                  },
                ),
                InkResponse(
                  child: Container(
                    padding: const EdgeInsets.all(8),
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
                              child: Icon(
                                FontAwesomeIcons.video,
                                color: AppTheme.iconColor,
                              ),
                              backgroundColor: AppTheme.iconBGColor,
                              // backgroundColor: Colors.teal[100],
                            ),
                          ],
                        ),
                        Text("Live Sessions"),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/livesession');
                  },
                ),
                InkResponse(
                  child: Container(
                    padding: const EdgeInsets.all(8),
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
                              child: Icon(
                                FontAwesomeIcons.signOutAlt,
                                color: AppTheme.iconColor,
                              ),
                              backgroundColor: AppTheme.iconBGColor,
                              // backgroundColor: Colors.teal[100],
                            ),
                          ],
                        ),
                        Text("Logout"),
                      ],
                    ),
                    // color: Colors.teal[200],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/');
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
