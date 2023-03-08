void main() {
  
  print('Antes de la petición');
  
  httpGet('https://api.nasa.com/aliens')
     .then( (data) { // despues del future
       
       print( data.toUpperCase() );
       
     });
  
  
  print('Fin del programa');
    
}




Future<String> httpGet( String url ) {// se define el tipo del Future, asi se puede usae los metodos de los stringd
  return Future.delayed( 
    Duration( seconds: 3 ), () =>'Hola Mundo - 3 segundos' //=> metodo de return cuando solo hay un valor
  );
}
