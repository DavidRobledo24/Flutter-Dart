import 'dart:io';

void main() {
  print("ingrese el valor de su compra: ");
  int? valorCompra = int.parse(stdin.readLineSync()!);

  print("ingrese el valor de su descuento: ");
  int? descuento = int.parse(stdin.readLineSync()!);

  double valorDescuento = valorCompra * descuento / 100;
  double valorTotal = valorCompra - valorDescuento;

  print("El valor total con descuento del producto es de: "+valorTotal.toString());
}
