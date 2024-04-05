import 'dart:io';

void main() {
  print('Ingrese la edad del cliente:');
  int edad = int.parse(stdin.readLineSync()!);

  int precio = 0;

  if (edad < 4) {
    precio = 0;
  } else if (edad >= 4 && edad <= 18) {
    precio = 5000;
  } else {
    precio = 10000;
  }

  print('El precio de entrada es: \$${precio}');
}
