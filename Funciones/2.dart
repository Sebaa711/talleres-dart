/* 2. Construya una función que calcule la suma de los n primeros números enteros 
impares. */
import 'dart:io';

void main() {
  print("Cuantos numeros enteros impares desea sumar?");
  int cantidad = int.parse(stdin.readLineSync().toString());
  print("Desde que numero?");
  int inicial = int.parse(stdin.readLineSync().toString());
  List<int> impares = crearListaImpares(cantidad, inicial);
  print(impares);
}

List<int> crearListaImpares(int cantidad, int inicial) {
  List<int> lista = [inicial % 2 != 0 ? inicial : inicial + 1];
  for (int i = 1; i < cantidad; i++) {
    lista.add(lista[lista.length - 1] + 2);
  }
  return lista;
}
