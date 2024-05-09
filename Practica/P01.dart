import 'dart:io';

void main() {
  print("Ingrese el primer numero: ");
  int n1 = int.parse(stdin.readLineSync()!);

  print("Ingrese el segundo numero: ");
  int n2 = int.parse(stdin.readLineSync()!);

  print("El resultado de la suma de $n1 + $n2 es igual a: "+sumar(n1, n2).toString());
}

int? sumar(int n1, int n2) {
  var total = n1 + n2;
  return total;
}
