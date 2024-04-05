import 'dart:io';

void main() {
  print('Ingrese la cantidad de piezas a procesar:');
  int cantidadPiezas = int.parse(stdin.readLineSync()!);

  int piezasAptas = 0;

  for (int i = 0; i < cantidadPiezas; i++) {
    print('Ingrese la longitud de la pieza ${i + 1}:');
    double longitud = double.parse(stdin.readLineSync()!);

    if (longitud >= 1.20 && longitud <= 1.30) {
      piezasAptas++;
    }
  }

  print('Cantidad de piezas aptas: $piezasAptas');
}
