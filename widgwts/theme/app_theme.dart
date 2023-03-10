import 'package:flutter/material.dart';

class AppTheme {
  static const Color greenGravity = Color.fromRGBO(60, 153, 0, 1);
  static const Color blueGravity = Color.fromRGBO(9, 50, 109, 1);
  static const Color blueSoftGravity = Color.fromRGBO(144, 163, 189, 1);
  static const Color grayGravity = Color.fromRGBO(137, 137, 137, 1);
  static const TextStyle fontGravity = TextStyle(fontFamily: 'TW Cent MT');

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //app bar theme
    appBarTheme: const AppBarTheme(
      color: blueGravity,
    ),
    // text buttom them
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: greenGravity)),

    //FloatingActionButtons

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: greenGravity,
    ),
    //Estilo formulario input
    inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: greenGravity),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: greenGravity),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            )),
        //para que se vea la caja en el imput
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: greenGravity),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            )),
        //para cuando no tienen borde
        border: OutlineInputBorder(
            borderSide: BorderSide(color: greenGravity),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ))),
    //slider
    sliderTheme: SliderThemeData(
      activeTrackColor: greenGravity,
      thumbColor: greenGravity,
    ),
    // ElevatedActionButtons

    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      backgroundColor: greenGravity,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(10)),
    )),
  );
}
