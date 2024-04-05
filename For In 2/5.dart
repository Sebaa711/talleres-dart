void main() {
  Map<String, int> asignaturas = {'Matemáticas': 6, 'Física': 4, 'Química': 5};
  mostrarCreditos(asignaturas);
}

void mostrarCreditos(Map<String, int> asignaturas) {
  int totalCreditos = 0;
  asignaturas.forEach((asignatura, creditos) {
    print('$asignatura tiene $creditos créditos');
    totalCreditos += creditos;
  });
  print('Número total de créditos del curso: $totalCreditos');
}
