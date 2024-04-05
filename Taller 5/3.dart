void main() {
  print("10 primeros numeros impares empezando desde el 3\n");

  List<int> impares = [];

  int i = 3;
  while (impares.length < 10) {
    if (i % 2 != 0) impares.add(i);
    i++;
  }

  for (int impar in impares) {
    print(impar);
  }
}
