import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

//formularios
class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      //permite hacer scroll
      body: const SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              //formularios mas interaccioene
              CustomImputField(
                labelText: 'nombre',
                helperText: 'Aqui va su nombre',
                hintText: "Nombre de usuario",
                icon: Icons.abc,
              ),
              SizedBox(height: 30),
              CustomImputField(
                labelText: 'apellido',
                helperText: 'Aqui va su apellido',
                hintText: "Apellido de usuario",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
