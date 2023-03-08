import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/cpunter_Screen.dart';
import 'package:flutter_application_1/screens/home_creen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp(
      { //constructor
      Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: CounterScreen());
  }
}
