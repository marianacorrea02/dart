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
    _width *= 2;
    _heigth *= 2;
    _color = Colors.red;
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
        child: Container(
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
