import 'dart:io';

void main() {
  print("Suma de 2 numeros, digitar dos veces \"0\" para salir");

  int num1, num2;
  do {
    print("Digite el primer numero");
    num1 = int.parse(stdin.readLineSync().toString());
    print("Digite el segundo numero");
    num2 = int.parse(stdin.readLineSync().toString());
    if (num1 != 0 && num2 != 0)
      print("$num1 + $num2 = ${num1 + num2}");
    else {
      print("\nHa salido...\n");
      break;
    }
  } while (true);
}
