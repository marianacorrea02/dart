import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              //formularios mas interaccioene
              TextFormField(
                // al cambiar de pantalla se enfoca en el espacio a llenars
                autofocus: true,
                initialValue: '',
                //empezar cada palabra con capital
                textCapitalization: TextCapitalization.words,
                //capturar el valor
                onChanged: (value) {
                  print('value:$value');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
