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
                //
                validator: (value) {
                  if (value == null) return 'Este campo es requerido';
                  //si tiene np cumple la validacion
                  return value.length < 0 ? 'minimo de 3 ltras' : null;
                },
                //usar el validador
                autovalidateMode: AutovalidateMode.always,
                decoration: const InputDecoration(
                  hintText: 'Nombre de Usuario',
                  labelText: 'Nombre',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  helperText: 'Aqui va su nombre de usuario',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
