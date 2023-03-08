
void main() {
// clase abtracta es una clase que no se puede instanciar o inicializar
 perro.emitirSonido();
}

abstract class Animal{ // obligar a clase a utilizar esas caracterizticas
 int? patas;
 void emitirSonido();

}
class Perro implements Animal {
 int? patas
 void emitirSonido(){
  print('Guau')
 }
}
