import 'dart:io';

void main() {
  print("Ingrese el primer numero: ");
  int n1 = int.parse(stdin.readLineSync()!);

  print("Ingrese el segundo numero: ");
  int n2 = int.parse(stdin.readLineSync()!);

  mayorMenor(n1, n2);
}

void mayorMenor(int n1, int n2) {
  if (n1 > n2) {
    print("El numero mayor es $n1 y el menor es $n2");
  } else if (n1 < n2) {
    print("El numero mayor es $n2 y el menor es $n1");
  } else if (n1 == 0 && n2 == 0) {
    print("Ambos numeros son cero");
  } else {
    print("Ambos numeros son iguales");
  }
}
