import 'package:flutter/material.dart';

class MenuOption {
  final String route; //nombre de la ruta a la que quiero ir de la pantalla home
  final IconData icon; //icono de la pantalla home
  final String
      name; //nombre a mostrar en la ruta especificada de la pantalla home
  final Widget screen;

  MenuOption(
      {required this.route,
      required this.icon,
      required this.name,
      required this.screen}); //pagina a mostrar
}
