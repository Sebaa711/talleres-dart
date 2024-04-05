import 'dart:io';

void main() {
  print('Ingrese la nota del taller 1:');
  double taller1 = double.parse(stdin.readLineSync()!);

  print('Ingrese la nota del taller 2:');
  double taller2 = double.parse(stdin.readLineSync()!);

  print('Ingrese la nota del examen final:');
  double examenFinal = double.parse(stdin.readLineSync()!);

  double notaFinal = (taller1 * 0.3) + (taller2 * 0.3) + (examenFinal * 0.4);
  print('La nota definitiva del alumno es: $notaFinal');
}
