void main() {
  print("10 primeros numeros pares empezando desde el 2\n");

  List<int> pares = [];

  int i = 2;
  while (pares.length < 10) {
    if (i % 2 == 0) pares.add(i);
    i++;
  }

  for (int par in pares) {
    print(par);
  }
}
