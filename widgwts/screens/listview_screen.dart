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
        // appbar reconoce si hay una pestaña atras y grega un boton de retroceso
        appBar: AppBar(
          title: Text('Prueba'),
        ),
        body: ListView.separated(
          // pone linea de separación
          // pone la linea de division
          itemBuilder: (context, index) => ListTile(
            // estilo de separación entre items
            //crea un widget
            title: Text(options[index]),
            onTap: () {}, //efecto de seleccion
          ),
          separatorBuilder: (_, index) => const Divider(),
          itemCount: options.length, //cantidad de items en, bajo demanda
        ));
  }
}
