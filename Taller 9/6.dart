import 'dart:io';

void main() {
  print('Ingrese el primer número:');
  int num1 = int.parse(stdin.readLineSync()!);

  print('Ingrese el segundo número:');
  int num2 = int.parse(stdin.readLineSync()!);

  int cantidadNumeros = 0;
  int num = 0;
  while (true) {
    print('Ingrese un número entre $num1 y $num2:');
    num = int.parse(stdin.readLineSync()!);

    if (num >= num1 && num <= num2) {
      cantidadNumeros++;
    } else {
      break;
    }
  }

  print('Cantidad de números escritos: $cantidadNumeros');
}
