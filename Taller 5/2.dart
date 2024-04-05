void main() {
  print("Suma de los primeros 100 numeros\n");

  List<int> pares = [1];

  while (pares.length < 100) {
    pares.add(pares[pares.length - 1] + pares.length + 1);
  }

  for (int par in pares) {
    print(par);
  }
}
