import 'dart:io';

void main() {
  print('Ingrese el lado 1 del triángulo:');
  double lado1 = double.parse(stdin.readLineSync()!);

  print('Ingrese el lado 2 del triángulo:');
  double lado2 = double.parse(stdin.readLineSync()!);

  print('Ingrese el lado 3 del triángulo:');
  double lado3 = double.parse(stdin.readLineSync()!);

  if (lado1 == lado2 && lado2 == lado3) {
    print('Es un triángulo equilátero.');
  } else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
    print('Es un triángulo isósceles.');
  } else {
    print('Es un triángulo escaleno.');
  }
}
