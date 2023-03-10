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
                textCapitalization: TextCapitalization.words,
              ),
              SizedBox(height: 30),
              CustomImputField(
                labelText: 'apellido',
                helperText: 'Aqui va su apellido',
                hintText: "Apellido de usuario",
                textCapitalization: TextCapitalization.words,
              ),
              SizedBox(height: 30),
              CustomImputField(
                labelText: 'Email',
                helperText: 'Aqui va su correo',
                hintText: "correp de usuario",
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 30),
              CustomImputField(
                labelText: 'Contraseña',
                helperText: 'Aqui va su contraseña',
                hintText: "contraseña de usuario",
                keyboardType: TextInputType.emailAddress,
                isPassword: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
