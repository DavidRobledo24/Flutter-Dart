import 'dart:io';
import 'dart:math';

void main() {
  print("hallar el valor de la hipotenusa");
  print("ingrese el valor del primer cateto");
  double? cateto1 = double.parse(stdin.readLineSync()!);

  print("ingrese el valor del segundo cateto");
  double? cateto2 = double.parse(stdin.readLineSync()!);

  double hipotenusa = sqrt(cateto1 * cateto1 + cateto2 * cateto2);

  print("el valor de la hipotenusa es de: " + hipotenusa.toString());
}
