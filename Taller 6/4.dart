import 'dart:io';

void main() {
  print('Ingrese el primer número:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Ingrese el segundo número:');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Ingrese el tercer número:');
  double num3 = double.parse(stdin.readLineSync()!);

  List<double> numeros = [num1, num2, num3];
  numeros.sort();

  print('Números ordenados de menor a mayor: $numeros');
}
