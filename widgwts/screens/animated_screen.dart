import 'dart:math';

import 'package:flutter/material.dart';

// cambiar de stateless a stateful
class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _heigth = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);
  void changeShape() {
    final r = Random();
    _width = r.nextInt(300).toDouble();
    _heigth = r.nextInt(300).toDouble();
    _color = Color.fromRGBO(r.nextInt(255), r.nextInt(255), r.nextInt(255), 1);
    // metodo para decir cambiar  propiedades

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animacion'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          //animacion
          curve: Curves.bounceInOut,
          width: _width,
          height: _heigth,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => changeShape(),
        child: const Icon(
          Icons.play_circle_outline_outlined,
          size: 35,
        ),
      ),
    );
  }
}
