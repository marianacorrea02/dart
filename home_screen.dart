import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key}); // identificar widget
  //variable propiedad

  @override
  Widget build(BuildContext context) {
    TextStyle title = const TextStyle(
        fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold);
    var body = const TextStyle(fontSize: 15, color: Colors.black);
    int c = 0;
    //arbol de widgets
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Gruum'),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.end, //alinear en fila al widger mas largo
          mainAxisAlignment: MainAxisAlignment.center, // alinear en columna
          children: [
            Text('Contador de Clicks', style: title),
            Text('$c', style: body),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.endFloat, //poscicionar button
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print('hola');
          c++;
        },
        backgroundColor: Colors.green,
      ),
    );
  }
}
