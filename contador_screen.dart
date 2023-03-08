import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterScreen extends StatefulWidget {
  //ctrl . y se cambia a StatefulWidget
  const CounterScreen({super.key});
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // identificar widget
  int c = 0;
  @override
  Widget build(BuildContext context) {
    //arbol de widgets
    TextStyle title = const TextStyle(
        fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold);
    var body = const TextStyle(fontSize: 15, color: Colors.black);

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
          FloatingActionButtonLocation.centerDocked, //poscicionar button
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              c++;
              setState(() {}); // cambio interno en el estado, se redibuja
            },
            backgroundColor: Colors.green,
          ),
          //const SizedBox(width: 20), // separaciones
          FloatingActionButton(
            child: const Icon(Icons.restart_alt),
            onPressed: () {
              c = 0;
              setState(() {}); // cambio interno en el estado, se redibuja
            },
            backgroundColor: Colors.green,
          ),

          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              c--;
              setState(() {}); // cambio interno en el estado, se redibuja
            },
            backgroundColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
