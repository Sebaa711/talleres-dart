import 'dart:io';

void main() {
  print('Ingrese la cantidad de alturas a procesar:');
  int cantidadAlturas = int.parse(stdin.readLineSync()!);

  double sumaAlturas = 0;

  for (int i = 0; i < cantidadAlturas; i++) {
    print('Ingrese la altura de la persona ${i + 1}:');
    double altura = double.parse(stdin.readLineSync()!);

    sumaAlturas += altura;
  }

  double alturaPromedio = sumaAlturas / cantidadAlturas;

  print('Altura promedio de las personas: $alturaPromedio');
}
