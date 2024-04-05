import 'dart:io';

void main() {
  print(
      "Suma necesaria desde 1 para llegar a un numero\nDigite un numero POSITIVO:");
  int numeroElegido = int.parse(stdin.readLineSync().toString());

  int i = 1;
  while (i * (i + 1) / 2 < numeroElegido) {
    i++;
  }

  print(
      "Es necesario sumar los primeros $i numeros naturales para llegar hasta $numeroElegido");
}
