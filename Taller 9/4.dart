import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int num1 = random.nextInt(101);
  int num2 = random.nextInt(101);
  int sumaCorrecta = num1 + num2;
  int respuesta = -1;

  while (respuesta != sumaCorrecta) {
    print('Ingrese la suma de $num1 y $num2:');
    respuesta = int.parse(stdin.readLineSync()!);

    if (respuesta != sumaCorrecta) {
      print('Respuesta incorrecta. Inténtelo de nuevo.');
    }
  }

  print('¡Respuesta correcta! La suma de $num1 y $num2 es $sumaCorrecta.');
}
