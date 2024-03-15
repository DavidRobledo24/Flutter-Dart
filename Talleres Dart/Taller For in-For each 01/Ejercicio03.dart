import 'dart:io';
import 'dart:core';

void main() {
  List<String> materias = [
    "Matemáticas",
    "Física",
    "Química",
    "Historia",
    "Lengua"
  ];
  List<double> notas = [];

  materias.forEach((x) {
    print("Ingrese la nota de la materia: $x");
    notas.add(double.parse(stdin.readLineSync()!));
  });

  print("sus notas son: ");
  
  for (int i = 0; i < materias.length; i++) {
    print(materias[i]  + notas[i].toString());
  }
}
