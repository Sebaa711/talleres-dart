import 'dart:io';

void main() {
  print('Ingrese el nombre de la niñera:');
  String nombre = stdin.readLineSync()!;

  print('Ingrese el número de horas trabajadas:');
  int horas = int.parse(stdin.readLineSync()!);

  double tarifa = 0;
  if (horas <= 10) {
    tarifa = 20000;
  } else if (horas <= 15) {
    tarifa = 20000 + (horas - 10) * 25000;
  } else if (horas <= 20) {
    tarifa = 20000 + 5 * 25000 + (horas - 15) * 40000;
  } else {
    tarifa = 20000 + 5 * 25000 + 5 * 40000 + (horas - 20) * 60000;
  }

  print(
      'La niñera $nombre debe recibir \$${tarifa.toStringAsFixed(2)} por su servicio.');
}
