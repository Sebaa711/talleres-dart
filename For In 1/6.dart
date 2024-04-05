/*  Escribir un programa que almacene las asignaturas de un curso (por ejemplo 
Matemáticas, Física, Química, Historia y Lengua) en una lista, pregunte al usuario la 
nota que ha sacado en cada asignatura y elimine de la lista las asignaturas aprobadas. 
Al final el programa debe mostrar por pantalla las asignaturas que el usuario tiene que 
repetir.
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

  for (Map asignatura
      in asignaturas.where((asignatura) => asignatura["Nota"] < 3.5).toList()) {
    print(
        "--> Materia reprobada: ${asignatura["Nombre"]}: ${asignatura["Nota"]}");
  }
}
