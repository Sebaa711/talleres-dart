import 'dart:io';

void main() {
  print('Ingrese la cantidad de notas a procesar:');
  int cantidadNotas = int.parse(stdin.readLineSync()!);

  int notasMayores = 0;
  int notasMenores = 0;

  for (int i = 0; i < cantidadNotas; i++) {
    print('Ingrese la nota del alumno ${i + 1}:');
    double nota = double.parse(stdin.readLineSync()!);

    if (nota >= 7) {
      notasMayores++;
    } else {
      notasMenores++;
    }
  }

  print('Cantidad de alumnos con notas mayores o iguales a 7: $notasMayores');
  print('Cantidad de alumnos con notas menores a 7: $notasMenores');
}
