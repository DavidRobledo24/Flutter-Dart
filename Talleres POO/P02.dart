void main() {
  final edison = new Persona("Edison", 25);
  edison.caracteristicas();
  var juan = new Empleado("Juena", 37);
  juan.caracteristicas();
  juan.decirCargo();
}

class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad) {
    this.nombre = nombre;
    this.edad = edad;
  }

  void caracteristicas() {
    print("El nombre es: $nombre");
    print("La edad es: $edad");
  }
}

class Empleado extends Persona {
  Empleado(String nombre, int edad) : super(nombre, edad);
  String cargo = "instructor";
  int sueldo = 10000000;
  void decirCargo() {
    print("el cargo es: $cargo");
    print("el sueldo es: $sueldo");
  }
}
