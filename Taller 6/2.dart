import 'dart:io';

void main() {
  print('Ingrese el mes (1-12):');
  int mes = int.parse(stdin.readLineSync()!);

  print('Ingrese el importe total de la compra:');
  double importe = double.parse(stdin.readLineSync()!);

  double descuento = 0;

  if (mes >= 1 && mes <= 3) {
    descuento = importe * 0.15;
  } else if (mes >= 4 && mes <= 6) {
    descuento = importe * 0.20;
  }

  double totalPagar = importe - descuento;
  print('Cantidad a cobrar al cliente: \$${totalPagar.toStringAsFixed(2)}');
}
