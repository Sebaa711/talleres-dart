import 'dart:io';

void main() {
  int suma = 0;
  int num1 = 1;
  int num2 = 1;

  while (num1 != 0 || num2 != 0) {
    print('Ingrese el primer número:');
    num1 = int.parse(stdin.readLineSync()!);

    print('Ingrese el segundo número:');
    num2 = int.parse(stdin.readLineSync()!);

    suma += num1 + num2;
    print('Suma actual: $suma');
  }

  print('Suma total: $suma');
}
