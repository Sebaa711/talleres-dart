/* Escribir un programa que pregunte al usuario los números ganadores de la lotería, los 
almacene en una lista y los muestre por pantalla ordenados de menor a mayor.

*/

import 'dart:io';

void main() {
  print("¿Cuantos numeros ganadores hay?");

  List<int> numerosGanadores =
      List.filled(int.parse(stdin.readLineSync().toString()), 0);

  for (int i = 0; i < numerosGanadores.length; i++) {
    print("\nDigite el numero ganador ${i + 1}:");
    numerosGanadores[i] = int.parse(stdin.readLineSync().toString());
  }

  numerosGanadores.sort();

  print("\n----------------------------------\n");

  for (int numeroGanador in numerosGanadores) {
    print("--> $numeroGanador");
  }
}
