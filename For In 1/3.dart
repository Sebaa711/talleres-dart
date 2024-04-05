/* Escribir un programa que almacene las asignaturas de un curso (por ejemplo 
Matemáticas, Física, Química, Historia y Lengua) en una lista, pregunte al usuario la 
nota que ha sacado en cada asignatura, y después las muestre por pantalla con el 
mensaje En <asignatura> has sacado <nota> donde <asignatura> es cada una des las 
asignaturas de la lista y <nota> cada una de las correspondientes notas introducidas 
por el usuario.
*/

import 'dart:io';

void main() {
  List<Map<String, dynamic>> asignaturas = [
    {"Nombre": "Matematicas", "Nota": null},
    {"Nombre": "Fisica", "Nota": null},
    {"Nombre": "Quimica", "Nota": null},
    {"Nombre": "Historia", "Nota": null},
    {"Nombre": "Lengua", "Nota": null}
  ];

  for (Map asignatura in asignaturas) {
    print("Digite su nota de \"${asignatura["Nombre"]}\": ");
    asignatura["Nota"] = double.parse(stdin.readLineSync().toString());
  }

  print("\n----------------------------------\n");

  for (Map asignatura in asignaturas) {
    print("--> ${asignatura["Nombre"]}: ${asignatura["Nota"]}");
  }
}
