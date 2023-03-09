import 'package:flutter/material.dart';

// card de imagen
class CustomCartType2 extends StatelessWidget {
  const CustomCartType2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        children: [
          //image normal FadeInImagen animacion mientras carga imagen
          FadeInImage(
            //poner link de imagen de google
            image: NetworkImage(
                'https://images.pexels.com/photos/1619317/pexels-photo-1619317.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            //imagen en el dispositivo, se mostrara mientras carga imagen
            placeholder: AssetImage('assets/jar-loading.gif'),
          )
        ],
      ),
    );
  }
}
