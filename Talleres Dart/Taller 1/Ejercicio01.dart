import 'dart:io';

void main() {
  print("Ingrese el numero de millas a convertir a metros.");
  int? millas = int.parse(stdin.readLineSync()!);

  if (millas <= 0) print("Error, la cantidad no puede ser cero o inferior");
  else if(millas>0){
    int total = millas * 1852;
    print("El total de millas en metros es: " + total.toString());
  }
}
