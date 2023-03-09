import 'package:flutter/material.dart';

class AppTheme {
  static const Color greenGravity = Color.fromRGBO(60, 153, 0, 1);
  static const Color blueGravity = Color.fromRGBO(9, 50, 109, 1);
  static const Color blueSoftGravity = Color.fromRGBO(144, 163, 189, 1);
  static const Color grayGravity = Color.fromRGBO(137, 137, 137, 1);
  static const TextStyle fontGravity = TextStyle(fontFamily: 'TW Cent MT');

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      color: blueGravity,
    ),
  );
}
