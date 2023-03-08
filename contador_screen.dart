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
  void increase() {
    c++;
    setState(() {});
  }

  void decrease() {
    c--;
    setState(() {});
  }

  void reset() {
    c = 0;
    setState(() {});
  }

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
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset, // se manda la referencia no la ejecuta
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;
  const CustomFloatingActions({
    super.key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => increaseFn(),
          backgroundColor: Colors.green,
        ),
        //const SizedBox(width: 20), // separaciones
        FloatingActionButton(
          child: const Icon(Icons.restart_alt),
          onPressed: () => resetFn(),
          backgroundColor: Colors.green,
        ),

        FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed: () => decreaseFn(),
          backgroundColor: Colors.green,
        ),
      ],
    );
  }
}
