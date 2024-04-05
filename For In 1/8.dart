/*   Escribir un programa que pida al usuario una palabra y muestre por pantalla el número 
de veces que contiene cada vocal.
*/

import 'dart:io';

void main() {
  print("Digite una palabra y se le dira el numero de vocales:");
  String palabra = stdin.readLineSync().toString();

  List vocales = palabra
      .split("")
      .where((letra) =>
          letra == "a" ||
          letra == "e" ||
          letra == "i" ||
          letra == "o" ||
          letra == "u" ||
          letra == "A" ||
          letra == "E" ||
          letra == "I" ||
          letra == "O" ||
          letra == "U")
      .toList();

  for (String vocal in vocales) {
    print("--> $vocal");
  }

  print(
      "\nEn total se encontraron ${vocales.length} vocales en la palabra \"$palabra\"\n");
}
