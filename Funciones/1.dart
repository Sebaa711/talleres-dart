/* 1. Construya un programa que calcule el cuadrado de los 10 primeros números enteros. */
void main() {
  List<int> listaNumeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  listaNumeros.forEach(
      (numero) => print('$numero al cuadrado = ${calcularCuadrado(numero)}'));
}

int calcularCuadrado(int numero) {
  return numero * numero;
}
