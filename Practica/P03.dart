import 'dart:io';

void main() {
  double total = 0;
  int opcion;
  
  do {
    //menu
    print("1. sopa = 5000 pesos");
    print("2. papa = 2000 pesos");
    print("3. carne = 6000 pesos");
    print("4. cerveza = 4000 pesos");
    print("5. arroz = 8000 pesos");
    print("0. salir");
    stdout.write("agrege un elemento al carrito: ");
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print("se agrego una sopa al carrito");
        total += 5000;
        break;
      case 2:
        print("se agrego una papa al carrito");
        total += 2000;
        break;
      case 3:
        print("se agrego una carne al carrito");
        total += 6000;
        break;
      case 4: 
        print("se agrego una cerveza al carrito");
        total += 4000;
        break;
      case 5:
        print("se agrego una libra de arroz al carrito");
        total += 8000;
        break;
      case 0:
        print("finalizando compra");
        print("El total a pagar es: $total");
        break;
      default:
        print("Opción no válida");
    }
  } while (opcion != 0);
}
