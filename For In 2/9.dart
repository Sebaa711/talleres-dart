import 'dart:io';

void main() {
  traducirPalabras();
}

void traducirPalabras() {
  Map<String, String> diccionario = {};

  print(
      'Ingrese las palabras y sus traducciones (en formato palabra:traducción):');
  String entrada = stdin.readLineSync()!;
  List<String> pares = entrada.split(',');

  pares.forEach((par) {
    List<String> partes = par.split(':');
    diccionario[partes[0].trim()] = partes[1].trim();
  });

  print('Ingrese una frase en español para traducir:');
  String frase = stdin.readLineSync()!;
  List<String> palabras = frase.split(' ');
  List<String> traducido = [];

  palabras.forEach((palabra) {
    if (diccionario.containsKey(palabra)) {
      traducido.add(diccionario[palabra]!);
    } else {
      traducido.add(palabra);
    }
  });

  print('Traducción: ${traducido.join(' ')}');
}
