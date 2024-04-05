import 'dart:io';

void main() {
  print('Ingrese el primer número:');
  int num1 = int.parse(stdin.readLineSync()!);

  print('Ingrese el segundo número:');
  int num2 = int.parse(stdin.readLineSync()!);

  int mayor = num1 > num2 ? num1 : num2;
  int menor = num1 < num2 ? num1 : num2;

  print('Números pares entre $menor y $mayor:');
  for (int i = menor; i <= mayor; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}
