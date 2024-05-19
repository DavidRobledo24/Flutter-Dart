import 'dart:io';

void main() {
  Map<String, String> diccionario = {'amarillo': 'yellow', 'rojo': 'red'};

  int opc;

  do {
    print(" ");
    print("seleccione una opcion: ");
    print("1. para agregar palabra nueva.");
    print("2. para eliminar palabra.");
    print("3. para traducir una palabra.");
    print("4. para ver el contenido del diccionario.");
    print("0. para salir del diccionario.");
    opc = int.parse(stdin.readLineSync()!);

    switch (opc) {
      case 1:
        print("ingrese la palabra en español");
        String llave = stdin.readLineSync()!;
        print("ingrese la palabra correspondiente en ingles: ");
        String valor = stdin.readLineSync()!;

        diccionario[llave] = valor;
        print("se agrego correctamente");
        break;

      case 2:
        print("ingrese la palabra en español que desea eliminar");
        String palabraEliminar = stdin.readLineSync()!;

        if (diccionario.containsKey(palabraEliminar)) {
          diccionario.remove(palabraEliminar);
          print("elimanada correctamente");
        } else {
          print("palabra no encontrada");
        }
        break;

      case 3:
        print("Ingrese la palabra en español que quiere traducir: ");
        String palabra = stdin.readLineSync()!;

        if (diccionario.containsKey(palabra)) {
          print('la traduccion de $palabra es: ${diccionario[palabra]}');
        } else {
          print("palabra no encontrada");
        }
        break;

      case 4:
        print("el contenido del diccionario es:");
        diccionario.forEach((key, value) {
          print('$key : $value');
        });
        break;

      case 0:
        print("saliendo del programa...");
        break;

      default:
        print("opcion no valida");
        break;
    }
  } while (opc != 0);
}