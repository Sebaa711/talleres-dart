import 'dart:io';

void main() {
  print('Ingrese la cantidad de docenas compradas:');
  int docenas = int.parse(stdin.readLineSync()!);

  double precioUnitario = 100; // Precio por docena
  double montoCompra = docenas *
      precioUnitario *
      12; // Precio por docena * 12 (unidades por docena)

  double descuento = 0;
  int unidadesObsequio = 0;

  if (docenas > 3) {
    descuento = montoCompra * 0.15; // 15% de descuento
    unidadesObsequio =
        (docenas - 3) * 12; // Una unidad por cada docena en exceso sobre 3
  } else {
    descuento = montoCompra * 0.10; // 10% de descuento
  }

  double montoPagar = montoCompra - descuento;

  print('Monto de la compra: \$${montoCompra.toStringAsFixed(2)}');
  print('Descuento aplicado: \$${descuento.toStringAsFixed(2)}');
  print('Monto a pagar: \$${montoPagar.toStringAsFixed(2)}');
  print('Unidades de obsequio: $unidadesObsequio');
}
