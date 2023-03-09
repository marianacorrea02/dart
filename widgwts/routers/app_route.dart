import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/screens.dart';

class AppRoutes {
  static const home = 'home';
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listView1': (BuildContext context) => const Listview1Screen(),
    'alertScreen': (BuildContext context) => const AlertScreen(),
    'cardScreen': (BuildContext context) => const CardScreen(),
  };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => AlertScreen(),
    );
  }
}
