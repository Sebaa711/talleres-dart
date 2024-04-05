import 'dart:io';

void main() {
  print('Ingrese la puntuación del empleado:');
  int puntos = int.parse(stdin.readLineSync()!);

  double bono = 200000.0 * puntos;

  if (puntos >= 0 && puntos < 20) {
    print('Llamado de atención, su puntuación es inaceptable.');
  } else {
    print('Su nivel de rendimiento es: ${(puntos / 20).floor()}');
    print('Cantidad de dinero a recibir: \$${bono.toStringAsFixed(2)}');
  }
}
