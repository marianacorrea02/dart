
void main() {
  final superan = new Heroe('Clarck');
  
}

abstract class Personaje {
  String? poder;
  String nombre;
  Personaje(this.nombre); //constructor
  @override
  String toString() {
    return '$nombre - $poder';
  }
}

class Heroe extends Personaje {
  Heroe(String nombre): super(nombre);//: para que se ejecute al momento de inicializar clase
  //super llamado a contructor de la clase abstracta 
}
