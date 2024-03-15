import 'dart:io';

void main() {
  List<String> materias = [
    "Matemáticas",
    "Física",
    "Química",
    "Historia",
    "Lengua"
  ];
  List<String> reprobada = [];

  materias.forEach((x) {
    print("ingrese la nota de la asignatura $x ");
    int? nota = int.parse(stdin.readLineSync()!);
    
    if (nota < 3) {
      reprobada.add(x);
    }
  });

  print("materias a repetir");
  reprobada.forEach((x) {
    print(x);
  });
}
