import 'dart:io';

void main() {
  print("Contraseña que no sea 1234");

  do {
    print("Digite su contraseña:");
    String contrasena = stdin.readLineSync().toString();
    if (contrasena != "1234") {
      print("Bienvenido");
      break;
    } else
      print("\"${contrasena}\" no es una contraseña valida");
  } while (true);
}
