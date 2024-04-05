import 'dart:io';

void main() {
  gestionarFacturas();
}

void gestionarFacturas() {
  Map<int, double> facturas = {};
  double cantidadCobrada = 0;

  while (true) {
    print(
        '¿Qué desea hacer? (1: añadir factura, 2: pagar factura, 3: terminar)');
    int opcion = int.parse(stdin.readLineSync()!);

    if (opcion == 1) {
      print('Ingrese el número de factura:');
      int numeroFactura = int.parse(stdin.readLineSync()!);
      print('Ingrese el coste de la factura:');
      double costoFactura = double.parse(stdin.readLineSync()!);
      facturas[numeroFactura] = costoFactura;
    } else if (opcion == 2) {
      print('Ingrese el número de factura a pagar:');
      int numeroFactura = int.parse(stdin.readLineSync()!);
      if (facturas.containsKey(numeroFactura)) {
        cantidadCobrada += facturas[numeroFactura]!;
        facturas.remove(numeroFactura);
      } else {
        print('¡La factura no existe!');
      }
    } else if (opcion == 3) {
      break;
    }
    print('Cantidad cobrada hasta el momento: $cantidadCobrada');
    print(
        'Cantidad pendiente de cobro: ${facturas.values.reduce((a, b) => a + b)}');
  }
}
