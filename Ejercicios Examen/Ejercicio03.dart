import 'dart:io';

void main() {
  List<int> numeros = [];
  int opc;

  do {
    print(" ");
    print("1. agregar numero.");
    print("2. ver lista de numeros.");
    opc = int.parse(stdin.readLineSync()!);

    switch (opc) {
      case 1:
        print("ingrese el numero.");
        numeros.add(int.parse(stdin.readLineSync()!));
        break;
      case 2:
        print('el contenido de la lista es:');
        numeros.forEach((element) {
          numeros.sort();
        });
        print(numeros.reversed);
        break;
      case 0:
        print("saliendo del programa.");
        break;
      default:
        print("opcion no valida");
    }
  } while (opc != 0);
}
