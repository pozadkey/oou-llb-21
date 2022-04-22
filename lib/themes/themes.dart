// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    textTheme: TextTheme(
      bodyText1: TextStyle(),
      bodyText2: TextStyle(),
    ).apply(
      bodyColor: Colors.grey[400],
    ),
    cupertinoOverrideTheme: CupertinoThemeData(
        barBackgroundColor: Colors.black,
        primaryColor: Colors.yellow[700],
        textTheme: CupertinoTextThemeData(primaryColor: Colors.white)),
    scaffoldBackgroundColor: Colors.black,
    backgroundColor: Colors.black,
    fontFamily: 'Poppins',
    colorScheme: ColorScheme.dark(),
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.yellow[700]),
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
            color: Colors.yellow[700],
            fontSize: 30,
            fontWeight: FontWeight.w500)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.black, elevation: 0),
    primaryColor: Colors.white,
  );

  static final lightTheme = ThemeData(
    textTheme: TextTheme(
      bodyText1: TextStyle(),
      bodyText2: TextStyle(),
    ).apply(
      bodyColor: Colors.grey[900],
    ),
    cupertinoOverrideTheme: CupertinoThemeData(
        barBackgroundColor: Colors.white,
        primaryColor: Colors.yellow[700],
        textTheme: CupertinoTextThemeData(primaryColor: Colors.yellow)),
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Poppins',
    colorScheme: ColorScheme.light(),
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.yellow[700]),
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
            color: Colors.yellow[700],
            fontSize: 30,
            fontWeight: FontWeight.w500)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white, elevation: 0),
  );
}
