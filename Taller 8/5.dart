import 'dart:io';

void main() {
  print('Ingrese el número de pasajeros:');
  int pasajeros = int.parse(stdin.readLineSync()!);

  print('Ingrese el valor del pasaje:');
  double valorPasaje = double.parse(stdin.readLineSync()!);

  double ganancia = 0;

  if (pasajeros < 300) {
    ganancia = 0;
  } else if (pasajeros <= 500) {
    ganancia = pasajeros * valorPasaje * 0.20;
  } else {
    ganancia = pasajeros * valorPasaje * 0.30;
  }

  print(
      'El conductor debe entregar \$${ganancia.toStringAsFixed(2)} al dueño del bus.');
}
