import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

//formularios
class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // se agregan keys
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    //datos del form
    final Map<String, String> formValues = {
      'fisrt': 'Mariana',
      'last': 'Correa',
      'email': 'mariana@gmail.com',
      'password': '12345',
      'role': 'Admin',
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      //permite hacer scroll
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            //se asigna la llave
            key: myFormKey,
            child: Column(
              children: [
                //formularios mas interaccioene
                CustomImputField(
                  labelText: 'nombre',
                  helperText: 'Aqui va su nombre',
                  hintText: "Nombre de usuario",
                  icon: Icons.abc,
                  textCapitalization: TextCapitalization.words,
                  formProperty: 'first',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomImputField(
                  labelText: 'apellido',
                  helperText: 'Aqui va su apellido',
                  hintText: "Apellido de usuario",
                  textCapitalization: TextCapitalization.words,
                  formProperty: 'last',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomImputField(
                  labelText: 'Email',
                  helperText: 'Aqui va su correo',
                  hintText: "correp de usuario",
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomImputField(
                  labelText: 'Contraseña',
                  helperText: 'Aqui va su contraseña',
                  hintText: "contraseña de usuario",
                  keyboardType: TextInputType.emailAddress,
                  isPassword: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                //menu de seleccion para formularios
                DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(
                      value: 'Admin',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'Usuario',
                      child: Text('usuario'),
                    ),
                    DropdownMenuItem(
                      value: 'no Admin',
                      child: Text('no Admin'),
                    ),
                  ],
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'no admin';
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      //ocultar el teclado
                      FocusScope.of(context).requestFocus(FocusNode());
                      //validar estado de formulario
                      if (!myFormKey.currentState!.validate()) {
                        print('formulario no valido');
                        return;
                      }
                      print(formValues);
                    },
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: const Text('Guardar')))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
