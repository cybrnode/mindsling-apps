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

  static const Color chatColor1 = Color(0xFF26A69A);
  static const Color chatColor2 = Color(0xfff1f9ff);
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
  static final BoxDecoration boxShadow = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        blurRadius: 2,
        offset: Offset(0, 3),
      ),
    ],
  );
  static final BoxShadow boxShadow2 = BoxShadow(
    color: Colors.grey.withOpacity(0.2),
    spreadRadius: 1,
    blurRadius: 7,
    offset: Offset(0, 6),
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
  static final TextStyle homeworkText = TextStyle(
    fontSize: 2.42 * SizeConfig.textMultiplier,
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
    fontSize: 3.5 * SizeConfig.textMultiplier,
    color: const Color(0xff000000),
    fontWeight: FontWeight.w700,
  );
  static final TextStyle profileCardText = TextStyle(
    fontSize: 3 * SizeConfig.textMultiplier,
    color: const Color(0xff000000),
    fontWeight: FontWeight.w700,
  );

  static final TextStyle homeCardsubText = TextStyle(
    fontSize: 3 * SizeConfig.textMultiplier,
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
    fontWeight: FontWeight.w100,
  );
  static final TextStyle eventText = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 1.5 * SizeConfig.textMultiplier,
    color: Colors.white,
  );
  static final TextStyle chatRowText = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 1.85 * SizeConfig.textMultiplier,
    color: Colors.black,
  );

  static final TextStyle chatText = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 14,
    color: Colors.white,
  );
  static final TextStyle chatText2 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 2 * SizeConfig.textMultiplier,
    color: appBackgroundColor,
  );
  static final TextStyle chatTimeText = TextStyle(
    fontSize: 2 * SizeConfig.textMultiplier,
    color: const Color(0xff7a8fa6),
    fontWeight: FontWeight.w700,
  );

  static final TextStyle chatMenuText = TextStyle(
    fontSize: 2 * SizeConfig.textMultiplier,
    color: const Color(0xff01a89e),
    fontWeight: FontWeight.w700,
  );
  static final TextStyle bullet = TextStyle(
    fontSize: 8 * SizeConfig.textMultiplier,
    color: appBackgroundColor,
    fontWeight: FontWeight.w700,
  );
}
