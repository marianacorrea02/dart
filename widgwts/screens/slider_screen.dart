import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: Column(children: [
        //seleccionar valores o mver un slide
        //con Slider.adaptative para que se adapte si es ios
        Slider.adaptive(
          divisions: 10,
          min: 50,
          max: 400,
          value: _sliderValue,
          onChanged: (value) {
            _sliderValue = value;
            setState(() {});
          },
        ),
        Image(
          image: AssetImage('assets/imagen avatar.jpg'),
          width: _sliderValue,
        )
      ]),
    );
  }
}
