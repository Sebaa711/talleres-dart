import 'dart:io';

void main() {
  print(
      "¿En cuantos meses se duplica mi capital con un 5% de interes mensual?");

  double capitalInicial = double.parse(stdin.readLineSync().toString());

  double capitalActual = capitalInicial;
  int meses = 0;
  while (capitalActual < capitalInicial * 2) {
    capitalActual += capitalInicial * 0.05;
    meses++;
  }

  print(
      "Su capital se duplicara en $meses meses, tendra la cantidad de: \$$capitalActual");
}
