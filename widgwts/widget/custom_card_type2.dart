import 'package:flutter/material.dart';

// card de imagen
class CustomCartType2 extends StatelessWidget {
  const CustomCartType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      //adaptar contenido
      clipBehavior: Clip.antiAlias,
      //boder
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          //image normal FadeInImagen animacion mientras carga imagen
          const FadeInImage(
            //poner link de imagen de google
            image: NetworkImage(
                'https://images.pexels.com/photos/1619317/pexels-photo-1619317.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            /*imagen en el dispositivo, se mostrara mientras carga imagen
              raiz de proyecto crear carpeta assets para poner ahi los recursos
              pubspect.yaml agregar assets*/
            placeholder: AssetImage('assets/jar-loading.gif'),
            //para cuando el ancho es limitado
            width: double.infinity,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
            child: Text('texto'),
          )
        ],
      ),
    );
  }
}
