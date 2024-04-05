import 'dart:io';

void main() {
  print(
      'Ingrese la lista de la compra (artículo, precio), una línea por artículo:');
  crearListaCompra();
}

void crearListaCompra() {
  Map<String, double> listaCompra = {};
  bool terminar = false;

  while (!terminar) {
    String articulo = stdin.readLineSync()!;
    if (articulo.isEmpty) {
      terminar = true;
      continue;
    }
    double precio = double.parse(stdin.readLineSync()!);
    listaCompra[articulo] = precio;
  }

  double costoTotal = 0;
  listaCompra.forEach((articulo, precio) {
    print('$articulo - \$${precio.toStringAsFixed(2)}');
    costoTotal += precio;
  });

  print('Costo total: \$${costoTotal.toStringAsFixed(2)}');
}
