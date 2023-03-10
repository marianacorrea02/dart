import 'package:flutter/material.dart';

class CustomImputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixicon;

  const CustomImputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixicon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
      decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          /*border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),*/

          helperText: helperText,
          // si suffixicon es = a null ponga un null de lo contrario ponga lo que se pasigno
          suffixIcon: suffixicon == null ? null : Icon(icon),
          icon: icon == null ? null : Icon(icon)),
    );
  }
}
