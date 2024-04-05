/*  Escribir un programa que almacene el abecedario en una lista, elimine de la lista las 
letras que ocupen posiciones múltiplos de 3, y muestre por pantalla la lista resultante.
*/

void main() {
  List<String> abecedario =
      "a, b, c, d, e, f, g, h, i, j, k, l, m, n, ñ, o, p, q, r, s, t, u, v, w, x, y, z"
          .split(", ");

  List<String> abecedarioSinMultiplo3 = [];

  abecedario.asMap().forEach((index, element) =>
      {if (index == 0 || index % 3 != 0) abecedarioSinMultiplo3.add(element)});

  print(abecedarioSinMultiplo3);
}
