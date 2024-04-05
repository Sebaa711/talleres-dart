import 'dart:io';

void main() {
  String contrasena = '';
  while (contrasena != '1234') {
    print('Ingrese la contraseña:');
    contrasena = stdin.readLineSync()!;
  }
  print('Bienvenido.');
}
