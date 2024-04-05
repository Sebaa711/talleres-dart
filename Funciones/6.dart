/* 6. Escribir un programa que implemente y utilice una función para determinar si un 
número es positivo o negativo, par o impar. */
import 'dart:io';

void main() {
  print("Digite el numero desde el que desea calcular el cubo");
  int inicio = int.parse(stdin.readLineSync().toString());
  print("Digite el numero hasta el que desea calcular el cubo");
  int fin = int.parse(stdin.readLineSync().toString());
}

List analizarNumero(numero) {
  List analisis = [];
  numero > 0
      ? analisis.add("positivo")
      : numero < 0
          ? analisis.add("negativo")
          : analisis.add("neutro");

  numero % 2 == 0 ? analisis.add("par") : analisis.add("impar");
  return analisis;
}
