void main() async {
  
  print('Antes de la petición');
  // resultado syncrono con una funcion
  final data = await httpGet('https://api.nasa.com/aliens');// await solo dentro de funcion asyncrona
  
  print( data );
  
//   final nombre = await getNombre( '10' );
//   print( nombre );
//    getNombre( '10' ).then( print ); (se ejecuta en sugundo plano)

  
  
  print('Fin del programa');
    
}


Future<String> getNombre( String id ) async { // async devueve un tipo Future
  return '$id - Fernando';
} 





Future<String> httpGet( String url ) {
  return Future.delayed( 
    Duration( seconds: 3 ), () =>'Hola Mundo - 3 segundos' 
  );
}
