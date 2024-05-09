import 'dart:io';

void main() {
  Map<String, String> diccionario = {
    'amarillo': 'yellow',
    'rojo': 'red',
    'azul': 'blue',
    'morado': 'purple'
  };

  int opc;

  do {
    print("\nIngrese la opción que desea");
    print("Ingrese 1 para agregar una palabra.");
    print("Ingrese 2 para eliminar una palabra.");
    print("Ingrese 3 para ver todo el diccionario.");
    print("Ingrese 4 para traducir una palabra.");
    print("Ingrese 0 para salir.");
    opc = int.parse(stdin.readLineSync()!);

    switch (opc) {
      case 1:
        print("Ingrese la palabra en español que desea agregar: ");
        String clave = stdin.readLineSync()!;
        print("Ingrese la palabra en ingles que corresponde:");
        String valor = stdin.readLineSync()!;
        
        diccionario[clave] = valor;
        print("Palabra agregada.");
        break;
      case 2:
        print("Ingrese la palabra en español que desea eliminar.");
        String palElim = stdin.readLineSync()!;

        if (diccionario.containsKey(palElim)) {
          diccionario.remove(palElim);
          print("Palabra eliminada.");
        } else {
          print("Palabra no encontrada.");
        }
        break;
      case 3:
        print("Contenido del diccionario:");
        diccionario.forEach((key, value) {
          print("$key: $value");
        });
        break;
      case 4:
        print("Ingrese la palabra que desea traducir: ");
        String palabra = stdin.readLineSync()!;
        if (diccionario.containsKey(palabra)) {
          print('La traducción de $palabra es ${diccionario[palabra]}');
        } else {
          print('Palabra no encontrada en el diccionario.');
        }
        break;
      case 0:
        print("Saliendo del programa...");
        break;
      default:
        print("Opción no válida. Intente de nuevo.");
    }
  } while (opc != 0);
}
