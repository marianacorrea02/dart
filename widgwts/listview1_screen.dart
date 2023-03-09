import 'dart:html';

import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    'Mariana',
    'Jeisson',
    'Adrian',
    'Juliana',
    'Luz'
  ]; //crear la lista
  const Listview1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        //lista
        children: [
          ...options
              .map(
                //operador ... para mostrar todos los elementos de esa lisat
                (nombre) => ListTile(
                  title: Text(nombre),
                  leading: Icon(Icons.add_a_photo_rounded), //icono foto
                  trailing:
                      const Icon(Icons.keyboard_arrow_down), // icono flecha
                ),
              )
              .toList()
        ],
      ),
    );
  }
}
