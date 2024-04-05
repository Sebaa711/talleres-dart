/* Escribir un programa que pregunte al usuario su nombre, edad, dirección y teléfono y 
lo guarde en un diccionario. Después debe mostrar por pantalla el mensaje <nombre> 
tiene <edad> años, vive en <dirección> y su número de teléfono es <teléfono>. */

import 'dart:io';

void main() {
  Map<String, String> datosPersona = {
    'Nombre': '',
    'Edad': '',
    'Direccion': '',
    'Telefono': ''
  };

  for (String dato in datosPersona.keys) {
    print("Digite su \"$dato\":");
    datosPersona[dato] = stdin.readLineSync().toString();
  }

  print("\n----------------- DATOS --------------------\n");

  for (String dato in datosPersona.keys) {
    print("--> $dato: ${datosPersona[dato]}");
  }
}
