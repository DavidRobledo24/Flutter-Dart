import 'dart:io';

void main() {
  print("Ingrese un numero: ");
  int numero = int.parse(stdin.readLineSync()!);
  
  determinarNumero(numero);
}

void determinarNumero(int numero) {
  if (numero > 0) {
    print("$numero es positivo.");
  } else if (numero < 0) {
    print("$numero es negativo.");
  } else {
    print("$numero es cero.");
  }

  if (numero % 2 == 0) {
    print("$numero es par.");
  } else {
    print("$numero es impar.");
  }
}
