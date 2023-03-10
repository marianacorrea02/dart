import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/models.dart';
import 'package:flutter_application_2/screens/screens.dart';

class AppRoutes {
  static const home = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        icon: Icons.ac_unit_outlined,
        name: 'Inicio',
        screen: const HomeScreen()),
    MenuOption(
        route: 'alert',
        icon: Icons.access_alarm_outlined,
        name: 'Alerta',
        screen: const AlertScreen()),
    MenuOption(
        route: 'listView1',
        icon: Icons.accessibility_new_outlined,
        name: 'Lista de nombres',
        screen: const Listview1Screen()),
    MenuOption(
        route: 'card',
        icon: Icons.account_balance_rounded,
        name: 'Cards',
        screen: const CardScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.account_circle_outlined,
        name: 'Avatar',
        screen: const AvatarScreen()),
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  /*static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listView1': (BuildContext context) => const Listview1Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  };*/
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => AlertScreen(),
    );
  }
}
