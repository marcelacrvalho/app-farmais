import 'package:flutter/material.dart';

final myTheme = ThemeData(
  primaryColor: const Color(0XFFC15151),
  scaffoldBackgroundColor: Colors.white,
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: Color(0XFFD2C094),
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(
      color: Colors.black54,
      fontSize: 14.0,
    ),
    bodySmall: TextStyle(
      color: Colors.grey,
      fontSize: 12.0,
    ),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0XFFC15151),
      foregroundColor: Colors.white,
      elevation: 0.0,
    ),
  ),

  buttonTheme: ButtonThemeData(
    buttonColor: const Color(0XFFC15151),
    padding: const EdgeInsets.all(16.0),
    disabledColor: Colors.grey,
    splashColor: const Color(0XFFC15151).withOpacity(0.5),
  ),
);
