/* Escribir un programa que guarde en una variable el diccionario {'Euro':'€', 'Dollar':'$', 
'Yen':'¥'}, pregunte al usuario por una divisa y muestre su símbolo o un mensaje de aviso 
si la divisa no está en el diccionario. */

import 'dart:io';

void main() {
  Map<String, String> monedas = {'Euro': '€', 'Dollar': '\$', 'Yen': '¥'};

  print("Digite el nombre de la moneda que desea conocer su simbolo: ");
  String nombreMoneda = stdin.readLineSync().toString();

  String? encontrado = null;
  for (String nombreActual in monedas.keys) {
    if (nombreActual.toLowerCase() == nombreMoneda.toLowerCase())
      encontrado = nombreActual;
  }

  if (encontrado != null)
    print("Moneda encontrada: ${monedas[encontrado]}");
  else
    print("Moneda no encontrada.");
}
