import 'dart:io';

void main() {
  print("Calculo de tarifa estacionamiento");

  print("Ingrese el numero de horas: ");
  double? horas = double.parse(stdin.readLineSync()!);

  if (horas == 1)print("El valor a pagar es: 1000");
  else if (horas > 1) {
    double total = horas * 800;
    print("El valor a pagar es:  $total");
  }
}