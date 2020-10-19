import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          'assets/mind-01_3.png',
          fit: BoxFit.fill,
        ),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
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
        children: [
          Container(
            height: 20.0,
            width: MediaQuery.of(context).size.width,
          ),
          Center(
            child: Text(
              'Settings',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            height: 40.0,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.sta,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        flex: 2,
                        child: ListTile(
                          title: Text(
                            'Notifications',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          // trailing: Icon(Icons.keyboard_arrow_right),
                          // onTap: () {
                          //   Text('Another data');
                          // },
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 50.0,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        flex: 2,
                        child: ListTile(
                          title: Text(
                            'Reset Password',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            Navigator.pushNamed(context, '/resetPassword');
                          },
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
    );
  }
}
