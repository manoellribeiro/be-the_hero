import 'package:flutter/material.dart';

class AppTheme {

  AppTheme._();

  //Light mode pallete of colors
  static const Color greyBackground = Color(0xFFF0F0F0);
  static const Color pink = Color(0xFFe02041);
  
  static final ThemeData lightTheme = ThemeData(
    accentColor: pink,
    backgroundColor: greyBackground,
    cardColor: Colors.white,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: pink),
    buttonColor: pink,
    textTheme: TextTheme(subtitle: TextStyle(color: Colors.black.withOpacity(0.5)),title: TextStyle(color: Colors.black))
  );


}