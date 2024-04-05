/* 3. Construya una función que realice intercambio de los valores entre 2 variables */
import 'dart:io';

void main() {
  print("Digite el valor 1");
  String valor1 = stdin.readLineSync().toString();
  print("Digite el valor 2");
  String valor2 = stdin.readLineSync().toString();
  List valoresAntes = [valor1, valor2];
  print('Antes: $valoresAntes');
  print('Despues: ${intercambiarValores(valoresAntes)}');
}

List intercambiarValores(List listaInicial) {
  return listaInicial..add(listaInicial.removeAt(0));
}
