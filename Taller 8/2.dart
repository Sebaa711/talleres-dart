import 'dart:io';

void main() {
  print('Ingrese la cantidad de kilómetros recorridos:');
  int kilometros = int.parse(stdin.readLineSync()!);

  double monto = 0;

  if (kilometros <= 300) {
    monto = 300000;
  } else if (kilometros <= 1000) {
    monto = 300000 + (kilometros - 300) * 15000;
  } else {
    monto = 300000 + 700 * 15000 + (kilometros - 1000) * 10000;
  }

  double montoConIVA = monto * 1.20; // Añadir el 20% de IVA

  print('Monto a pagar (incluido IVA): \$${montoConIVA.toStringAsFixed(2)}');
}
