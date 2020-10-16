import 'package:flutter/material.dart';
import 'package:mindsling_student/size_config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

abstract class AppTheme {
  AppTheme._();

  static const Color appBackgroundColor = Color(0xFF26A69A);
  static const Color buttonColor = Color(0xFF26A69A);

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
      'assets/mind-01.png',
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

  static final TextStyle title = TextStyle(
    color: const Color(0xff000000),
    fontWeight: FontWeight.w500,
    fontSize: 2.91 * SizeConfig.textMultiplier,
  );
}
