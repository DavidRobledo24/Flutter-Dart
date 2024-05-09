class Moto {
  String marca;
  String color;

  Moto(this.marca, this.color) {
    this.marca = marca;
    this.color = color;
  }

  void caracteristicas() {
    print("La marca es: $marca");
    print("La marca es: $color");
  }
}

void main() {
  final mt09 = new Moto("Yamaha", "Negra");
  mt09.caracteristicas();

  final z1000 = new Moto("Kawazaki", "Verde");
  mt09.caracteristicas();
}
