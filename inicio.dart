void main() {
  //listas
  List<int> numeros =[1,2,3,4];
  //metodos de listas
  //si no se define el tipo de dato puede recibir lo que sea <int>
  numeros.add(5);
  
  final masNumeros= List.generate(100,(int index) =>index);
  //() => funcion que retorna el index
  print( numeros);
}
