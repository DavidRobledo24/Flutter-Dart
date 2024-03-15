import 'dart:io';

void main() {
  print("ingrese la palara: ");
  String palabra = stdin.readLineSync().toString();

  List<String> vocales = ["a", "e", "i", "o", "u"];
  List<int> cont = [0, 0, 0, 0, 0];

  int i = 0;
  vocales.forEach((x) {
    for (int j = 0; j < palabra.length; j++) {
      if (palabra[j] == x) {
        cont[i]++;
      }
      i++;
    }
  });

  cont.forEach((x) {
    print(x);
  });
}
