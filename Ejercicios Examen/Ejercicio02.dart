import 'dart:io';

class Persona {
  int documento;
  String nombre;
  double nota;

  Persona(this.documento, this.nombre, this.nota);

  int get getDocumento => documento;
  String get getNombre => nombre;
  double get getNota => nota;

  set SetDocumento(int value) {
    documento = value;
  }

  set SetNombre(String value) {
    nombre = value;
  }

  set SetNota(double value) {
    nota = value;
  }
}

void main() {
  Persona p1 = new Persona(101010, "Juan", 4.3);
  Persona p2 = new Persona(123456, "martha", 5.8);
  Persona p3 = new Persona(123455, "david", 9.4);
  Persona p4 = new Persona(123789, "carolina", 2.6);
  Persona p5 = new Persona(987654, "fernando", 8.9);
  Persona p6 = new Persona(987321, "german", 9.3);

  List<Persona> lista = [p1, p2, p3, p4, p5, p6];
  int opc;

  do {
    print(" ");
    print("1. consultar la nota de un aprendiz");
    print("2. mostrar la mayor nota");
    print("3. mostrar la menor nota");
    print("4. mostrar el promedio notas");
    print("5. mostrar quienes aprovaron");
    print("6. mostrar quienes reprovaron");
    print("0. salir.");
    opc = int.parse(stdin.readLineSync()!);

    switch (opc) {
      case 1:
        print("ingrese el documento del aprendiz");
        int documento = int.parse(stdin.readLineSync()!);
        Persona? personaEncontrada = lista.firstWhere(
          (persona) => persona.getDocumento == documento,
          orElse: () => Persona(0, "No encontrado", 0.0),
        );
        if (personaEncontrada != null) {
          print(personaEncontrada.getNombre);
          print(personaEncontrada.getNota);
        } else {
          print("No se encontró un aprendiz con el documento ingresado.");
        }
        break;
      case 2:
        double notaMaxima = lista.fold(0.0, (total, persona) {
          return total > persona.getNota ? total : persona.getNota;
        });
        print('La nota mas alta es: $notaMaxima');
        break;
      case 3:
        double notaMinima = lista.fold(9.9, (total, persona) {
          return total < persona.getNota ? total : persona.getNota;
        });
        print('la nota mas baja es: $notaMinima');
        break;
      case 4:
        double promedio = lista.fold(0.0, (total, persona) {
              return total + persona.getNota;
            }) /
            lista.length;
        print('el promedio de las notas es: $promedio');
        break;
      case 5:
        print("los estudiantes que aprobaron son:");
        for (Persona persona in lista) {
          if (persona.getNota >= 7) {
            print(persona.getNombre);
          }
        }
        break;
      case 6:
        print("los estudiantes que reprobaron son:");
        for (Persona persona in lista) {
          if (persona.getNota < 7) {
            print(persona.getNombre);
          }
        }
        break;
      case 0:
        print("saliendo del programa");
        break;
      default:
        print("opción no valida");
        break;
    }
  } while (opc != 0);
}
