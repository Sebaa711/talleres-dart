import 'dart:io';

void main() {
  List<int> lista1 = [];
  List<int> lista2 = [];

  print('Ingrese 15 valores para la lista 1:');
  for (int i = 0; i < 15; i++) {
    lista1.add(int.parse(stdin.readLineSync()!));
  }

  print('Ingrese 15 valores para la lista 2:');
  for (int i = 0; i < 15; i++) {
    lista2.add(int.parse(stdin.readLineSync()!));
  }

  int sumaLista1 = lista1.reduce((value, element) => value + element);
  int sumaLista2 = lista2.reduce((value, element) => value + element);

  if (sumaLista1 > sumaLista2) {
    print('La lista 1 tiene un valor acumulado mayor.');
  } else if (sumaLista2 > sumaLista1) {
    print('La lista 2 tiene un valor acumulado mayor.');
  } else {
    print('Las listas tienen un valor acumulado igual.');
  }
}
