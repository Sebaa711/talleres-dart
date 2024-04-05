import 'dart:io';

void main() {
  print("Sumar numeros entre inicio y fin:");

  print("Numero de inicio:");
  int inicio = int.parse(stdin.readLineSync().toString());

  print("Numero de fin:");
  int fin = int.parse(stdin.readLineSync().toString());

  int suma = 0;
  int i = inicio;
  while (i <= fin) {
    suma += i;
    i++;
  }

  print("Los numeros entre $inicio y $fin suman: $suma");
}
