import 'package:flutter/material.dart';

// card de imagen
class CustomCartType2 extends StatelessWidget {
  const CustomCartType2({super.key, required this.imageUrl, this.name});
  final String imageUrl;
  final String? name;

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
          FadeInImage(
            //poner link de imagen de google
            image: NetworkImage(imageUrl),
            /*imagen en el dispositivo, se mostrara mientras carga imagen
              raiz de proyecto crear carpeta assets para poner ahi los recursos
              pubspect.yaml agregar assets*/
            placeholder: AssetImage('assets/jar-loading.gif'),
            //para cuando el ancho es limitado
            width: double.infinity,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          // solo construye el texto si tiene algo
          if (name != null)
            Container(
              //para cuando es opcional
              child: Text(name ?? ''),
            )
        ],
      ),
    );
  }
}
