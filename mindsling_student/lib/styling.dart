import 'package:flutter/material.dart';
import 'package:mindsling_student/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

abstract class AppTheme {
  AppTheme._();

  static const Color appBackgroundColor = Color(0xFF26A69A);
  static const Color secondaryColor = Color(0xffa9b9c5);
  static const Color iconBGColor = Color(0xFFB2DFDB);
  static const Color iconColor = Color(0xFF26A69A);
  static const Color buttonColor = Color(0xFF26A69A);
  static const Color subTextColor = Color(0xffa9b9c5);

  static final AppBar appBar = AppBar(
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
  );
  static final AppBar appBarLogin = AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: FittedBox(
      child: Image.asset(
        'assets/mind-01_3.png',
        fit: BoxFit.fill,
      ),
    ),
    centerTitle: true,
  );
  static final AppBar appBarHome = AppBar(
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
  );

  static final TextStyle loginText = TextStyle(
    fontSize: 3.15 * SizeConfig.textMultiplier,
    color: const Color(0xff000000),
    fontWeight: FontWeight.w700,
  );
  static final TextStyle headerText = TextStyle(
    fontSize: 1.94 * SizeConfig.textMultiplier,
    color: const Color(0xff01a89e),
    fontWeight: FontWeight.w600,
  );
  static final TextStyle headerText2 = TextStyle(
    fontSize: 3 * SizeConfig.textMultiplier,
    color: const Color(0xff000000),
    fontWeight: FontWeight.w700,
  );
  static final TextStyle vidHeaderText = TextStyle(
    fontSize: 2.4 * SizeConfig.textMultiplier,
    color: const Color(0xff000000),
    fontWeight: FontWeight.w500,
  );
  static final TextStyle rowText = TextStyle(
    fontSize: 1.94 * SizeConfig.textMultiplier,
    color: const Color(0xff000000),
    fontWeight: FontWeight.w500,
  );
  static final TextStyle subHeadText = TextStyle(
    fontSize: 2.42 * SizeConfig.textMultiplier,
    color: subTextColor,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle subText = TextStyle(
    fontSize: 1.94 * SizeConfig.textMultiplier,
    color: subTextColor,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle title = TextStyle(
    color: const Color(0xff000000),
    fontWeight: FontWeight.w500,
    fontSize: 2.91 * SizeConfig.textMultiplier,
  );

  static final TextStyle homeCardText = TextStyle(
    fontSize: 2.4 * SizeConfig.textMultiplier,
    color: const Color(0xff000000),
    fontWeight: FontWeight.w700,
  );

  static final TextStyle homeCardsubText = TextStyle(
    fontSize: 2.4 * SizeConfig.textMultiplier,
    color: subTextColor,
  );
  static final TextStyle vidCardText = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 1.93 * SizeConfig.textMultiplier,
    color: const Color(0xff000000),
    height: 1.25,
  );

  static final TextStyle bottomNavText = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 1.93 * SizeConfig.textMultiplier,
  );

  static final TextStyle notifSubText = TextStyle(
    fontSize: 1.5 * SizeConfig.textMultiplier,
    color: subTextColor,
  );
  static final TextStyle shortNotifSubText = TextStyle(
    fontSize: 1.3 * SizeConfig.textMultiplier,
    color: subTextColor,
  );
  static final TextStyle eventTitle = TextStyle(
    fontSize: 2.4 * SizeConfig.textMultiplier,
    color: Colors.white,
  );
  static final TextStyle eventText = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 1.5 * SizeConfig.textMultiplier,
    color: Colors.white,
  );
}
