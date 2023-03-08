void main() {
 Heroe  wol=new Heroe('Logan','regeneración');
 //wol.nombre='Logan';
 //wol.poder ='regeneración';
}

class Heroe{
 String? nombre;
 String? poder;
 Heroe(this.nombre, this.poder);//inicializa es como el constructor para saltarnos la linea 3 y 4 y agregar a la linea 2
 @override
 String toString() {
  return 'nombre: ${this.nombre}';
 }
}

