import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindsling_student/styling.dart';
import 'package:mindsling_student/size_config.dart';

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
            onPressed: () {
              Navigator.pushNamed(context, '/notifications');
            },
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
          SizedBox(height: 3 * SizeConfig.heightMultiplier),
          Expanded(
            child: GridView.count(
              primary: false,
              padding: EdgeInsets.symmetric(
                  horizontal: 5.78 * SizeConfig.widthMultiplier,
                  vertical: 3.03 * SizeConfig.heightMultiplier),
              childAspectRatio: (25 / 20),
              crossAxisSpacing: 5 * SizeConfig.heightMultiplier,
              mainAxisSpacing: 9.25 * SizeConfig.widthMultiplier,
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
                        Flexible(
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 28,
                                // backgroundImage: AssetImage(
                                //   'assets/greyhome-05.png',
                                // ),
                                child: Image.asset(
                                    'assets/icons/Icon feather-settings.png'),
                                backgroundColor: AppTheme.iconBGColor,
                              ),
                            ],
                          ),
                        ),
                        FittedBox(child: Text("Settings")),
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
                        Flexible(
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 28,
                                child: Icon(
                                  FontAwesomeIcons.exclamationCircle,
                                  color: AppTheme.iconColor,
                                ),
                                backgroundColor: AppTheme.iconBGColor,
                                // backgroundColor: Colors.teal[100],
                              ),
                            ],
                          ),
                        ),
                        FittedBox(child: Text("About App")),
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
                        Flexible(
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 28,
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
                        ),
                        FittedBox(child: Text("Privacy Policy")),
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
                        Flexible(
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 28,
                                child:
                                    Image.asset('assets/icons/Group 1127.png'),
                                backgroundColor: AppTheme.iconBGColor,
                              ),
                            ],
                          ),
                        ),
                        FittedBox(child: Text("Terms & Conditions")),
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
                        Flexible(
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 28,
                                child: Image.asset(
                                    'assets/icons/Icon material-live-tv.png'),
                                backgroundColor: AppTheme.iconBGColor,
                              ),
                            ],
                          ),
                        ),
                        FittedBox(child: Text("Live Sessions")),
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
                        Flexible(
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 28,
                                child:
                                    Image.asset('assets/icons/Group 1195.png'),
                                backgroundColor: AppTheme.iconBGColor,
                              ),
                            ],
                          ),
                        ),
                        FittedBox(child: Text("Logout")),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/');
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
