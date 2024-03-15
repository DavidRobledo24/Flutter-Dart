import 'dart:io';

void main() {
  print("Calculo de ganacia para colectivo");

  print("Ingrese le valor pro pasaje:");
  double valorPasaje = double.parse(stdin.readLineSync()!);

  print("Ingrese la cantidad de personas que abordaron:");
  double cantidadPersonas = double.parse(stdin.readLineSync()!);

  double ganancia = valorPasaje * cantidadPersonas;
  
  print("La ganancia total fue de: "+ganancia.toString());
}
