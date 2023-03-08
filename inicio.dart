void main() {
 final rawJson = {//map
  'nombre':'tony',
  'poder': 'dinero'
 };
 final ironman = Heroe.fromJson( rawJson );
 //Heroe  wol=new Heroe(nombre:'Logan',poder:'regeneración');
 //wol.nombre='Logan';
 //wol.poder ='regeneración';
}

class Heroe{
 String nombre;
 String poder;
 Heroe({required this.nombre, required this.poder});// con las llaves es necesario poner en la linea dos nombre: y required lo hace oblogatorio
 Heroe.fromJson(Map<String, String> json){
  this.nombre=json['nombre']; //]??  'no tiene'; puede que reciba valor o no
 }
 @override
 String toString() {
  return 'nombre: ${this.nombre}';
 }
}

