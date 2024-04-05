import 'dart:io';

void main() {
  print('Ingrese la cantidad de números a procesar:');
  int cantidadNumeros = int.parse(stdin.readLineSync()!);

  double suma = 0;

  for (int i = 0; i < cantidadNumeros; i++) {
    print('Ingrese el número ${i + 1}:');
    double numero = double.parse(stdin.readLineSync()!);

    suma += numero;
  }

  double promedio = suma / cantidadNumeros;

  print('El promedio de los números ingresados es: $promedio');
}
