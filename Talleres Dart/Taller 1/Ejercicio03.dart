import 'dart:io';

void main() {
  print("Ingrese el primer numero");
  int? a = int.parse(stdin.readLineSync()!);

  print("Ingrese el segundo numero");
  int? b = int.parse(stdin.readLineSync()!);

  int suma = a + b;
  int resta = a - b;
  int multiplicacion = a * b;
  print("El resultado de las operaciones es: ");
  print("la suma de "+a.toString()+" + "+b.toString()+" es igual a: "+suma.toString());
  print("la resra de "+a.toString()+" - "+b.toString()+" es igual a: "+resta.toString());
  print("la multiplicacion de "+a.toString()+" * "+b.toString()+" es igual a: "+multiplicacion.toString());
}
