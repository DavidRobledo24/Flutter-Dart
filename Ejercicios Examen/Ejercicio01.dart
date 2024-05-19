import 'dart:io';

void main() {
  Map<int, String> diccionario = {};
  int opc;

  do {
    print(" ");
    print("1. agregar usuario");
    print("2. mostrar usuarios");
    print("3. editar usuario");
    print("4. eliminar usuario");
    print("0. salir.");
    opc = int.parse(stdin.readLineSync()!);

    switch (opc) {
      case 1:
        print("ingrese la cedula del usuario");
        int cedula = int.parse(stdin.readLineSync()!);
        print("ingrese el nombre del usuario");
        String nombre = stdin.readLineSync()!;
        diccionario[cedula] = nombre;
        break;
      case 2:
        print("los usuarios son:");
        diccionario.forEach((key, value) {
          print("$key - $value");
        });
        break;
      case 3:
        print("ingrese la cedula del usuario");
        int cedula = int.parse(stdin.readLineSync()!);
        if (diccionario.containsKey(cedula)) {
          print("ingrese el nuevo nombre del usuario");
          String nombre = stdin.readLineSync()!;
          diccionario[cedula] = nombre;
        }
        break;
      case 4:
        print("ingrese la cedula del usuario");
        int cedula = int.parse(stdin.readLineSync()!);
        if (diccionario.containsKey(cedula)) {
          diccionario.remove(cedula);
        }
        break;
      case 0:
        print("saliendo del programa:");
        break;
      default:
        print("opcion incorrecta");
        break;
    }
  } while (opc != 0);
}
