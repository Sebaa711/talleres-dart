/* 4. Realizar una función, en el cual se ingresa un número entero de varias cifras y un entero 
con una posición y se retorna el dígito de dicha posición. */
import 'dart:io';

void main() {
  print("Digite cualquier valor");
  String valor = stdin.readLineSync().toString();
  print("Digite la posicion de ese valor que desea imprimir");
  int indice = int.parse(stdin.readLineSync().toString());

  String? resultado = imprimirIndiceValor(valor, indice);
  print('Valor: $valor');
  print(
      'Caracter en la posicion $indice: ${resultado != null ? resultado : "No encontrado"}');
}

String? imprimirIndiceValor(String valor, int indice) {
  int indiceConvertido = indice - 1;
  List valorSeparado = valor.split('');
  if (indiceConvertido >= 0 && indiceConvertido < valorSeparado.length)
    return valorSeparado[indiceConvertido];
  return null;
}
