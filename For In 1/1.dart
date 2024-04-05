/* Escribir un programa que almacene las asignaturas de un curso (por ejemplo 
Matemáticas, Física, Química, Historia y Lengua) en una lista y la muestre por pantalla */
void main() {
  List<String> asignaturas = [
    "Matematicas",
    "Fisica",
    "Quimica",
    "Historia",
    "Lengua"
  ];

  print("Asignaturas: \n");
  for (String asignatura in asignaturas) {
    print("-> $asignatura");
  }
}
