import 'dart:io';

void main() {
  print("ingrese el numero de horas trabajadas:");
  int? horas = int.parse(stdin.readLineSync()!);

  print("ingrese el valor por hora:");
  int? valorHora = int.parse(stdin.readLineSync()!);

  int valorCobrar = horas * valorHora;

  print("el valor a cobrar es de: " + valorCobrar.toString());
}
