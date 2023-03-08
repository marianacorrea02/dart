abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

//Mixiin cractaeirsticas especificas
abstract class Volador {
  void volar() => print("volador");
}

abstract class Caminantes {
  void caminar() => print("caminante");
}

abstract class Nadador {
  void nadar() => print("nadar");
}

class Delfin extends Mamifero with Nadador {
  // mixins se reconocen con with
}

class Murcielago extends Mamifero with Caminantes, Volador {
  // mixins se reconocen con with
}

class Gato extends Mamifero with Caminantes {
  // mixins se reconocen con with
}

class Dove extends Ave with Caminantes, Volador {
  // mixins se reconocen con with
}

class Pato extends Ave with Caminantes, Volador, Nadador {
  // mixins se reconocen con with
}

class Tiburon extends Pez with Nadador {
  // mixins se reconocen con with
}

class PezVolador extends Pez with Nadador, Volador {
  // mixins se reconocen con with
}

void main() {
  final d = new Delfin();
  d.nadar();

  final m = new Murcielago();
  m.caminar();
  m.volar();

  final p = new Pato();
  p.caminar();
  p.nadar();
  p.volar();
}
