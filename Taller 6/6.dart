import 'dart:io';

void main() {
  String usuario = 'usuario';
  String contrasena = 'contraseña';

  int intentos = 3;

  while (intentos > 0) {
    print('Ingrese su usuario:');
    String inputUsuario = stdin.readLineSync()!;
    print('Ingrese su contraseña:');
    String inputContrasena = stdin.readLineSync()!;

    if (inputUsuario == usuario && inputContrasena == contrasena) {
      print('¡Bienvenido!');
      break;
    } else {
      intentos--;
      if (intentos > 0) {
        print('Usuario o contraseña incorrectos. Inténtelo de nuevo.');
        print('Intentos restantes: $intentos');
      } else {
        print('Ha alcanzado el número máximo de intentos. Adiós.');
      }
    }
  }
}
