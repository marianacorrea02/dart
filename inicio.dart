iport 'dart:math' as math;
void main() {
 final cuadrado = new Cuadrado(5);
 print ('area: ${cuadrado.calcularArea()}');
 print ('area: ${cuadrado.area}');// con get
 cuadrado.area = 20;
}

class Cuadrado {
 double lado;
 
 double get area{ //getters no se ponen los parentesis al final ()
  return this.lado * this.lado;
 }
 set area (double valor){
  this.lado = math.sqrt(valor)
  print('set:$valor');
 }
 Cuadrado ( double lado ):
 this.lado =lado; 
 
 double calcularArea(){
  return this.lado * this.lado;
 }
}

