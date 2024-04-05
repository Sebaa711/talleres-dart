import 'dart:io';
import 'dart:math';

void main() {
  print("Acertar suma entre dos numeros de maximo 100");

  int num1, num2;
  do {
    num1 = Random().nextInt(100) + 1;
    num2 = Random().nextInt(100) + 1;
    int suma = num1 + num2;
    print("$num1 + $num2 = ???\nDigite su respuesta:");
    if (int.parse(stdin.readLineSync().toString()) == suma) {
      print("Correcto!");
      break;
    } else
      print("Incorrecto, $num1 + $num2 es igual a $suma");
  } while (true);
}
