/* 5. Escribir un programa que implemente y utilice una function que calcule el cubo de los 
numeros entre dos variables n y m. */
import 'dart:io';

void main() {
  print("Digite el numero desde el que desea calcular el cubo");
  int inicio = int.parse(stdin.readLineSync().toString());
  print("Digite el numero hasta el que desea calcular el cubo");
  int fin = int.parse(stdin.readLineSync().toString());
  var listaResultado = calcularCuboLista(inicio, fin);
  listaResultado.forEach((element) {
    print('${element[0]} al cubo = ${element[1]}');
  });
}

List calcularCuboLista(int inicio, int fin) {
  List listaResultado = [];
  for (int i = 0; i <= fin - inicio; i++) {
    int numeroActual = inicio + i;
    listaResultado.add([numeroActual, calcularCubo(numeroActual)]);
  }
  return listaResultado;
}

int calcularCubo(int numero) {
  return numero * numero * numero;
}
