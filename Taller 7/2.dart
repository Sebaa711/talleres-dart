import 'dart:io';

void main() {
  print('Ingrese su nombre:');
  String nombre = stdin.readLineSync()!;

  print('Ingrese su sexo (M para mujer, H para hombre):');
  String sexo = stdin.readLineSync()!.toUpperCase();

  if ((sexo == 'M' && nombre.toUpperCase().codeUnitAt(0) < 'M'.codeUnitAt(0)) ||
      (sexo == 'H' && nombre.toUpperCase().codeUnitAt(0) > 'N'.codeUnitAt(0))) {
    print('Pertenece al grupo A.');
  } else {
    print('Pertenece al grupo B.');
  }
}
