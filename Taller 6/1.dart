import 'dart:io';

void main() {
  print('Ingrese el número total de estudiantes:');
  int totalEstudiantes = int.parse(stdin.readLineSync()!);

  print('Ingrese el número de hombres:');
  int hombres = int.parse(stdin.readLineSync()!);

  int mujeres = totalEstudiantes - hombres;

  double porcentajeHombres = (hombres / totalEstudiantes) * 100;
  double porcentajeMujeres = 100 - porcentajeHombres;

  if (porcentajeHombres > porcentajeMujeres) {
    print('Mayor cantidad de hombres: $porcentajeHombres%');
  } else {
    print('Mayor cantidad de mujeres: $porcentajeMujeres%');
  }
}
