import 'dart:io';

void main() {
  List<int> numeros = [];

  print("ingrese los numeros ganadores: ");

  for (int i = 0; i < 5; i++) {
    numeros.add(int.parse(stdin.readLineSync()!));
  }

  numeros.sort();

  print("Los numeros ganadores son: ");
  numeros.forEach((x) => print(x));
}