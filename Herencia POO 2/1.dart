class Precio {
  double valor;

  Precio(this.valor);
}

class Factura extends Precio {
  String emisor;
  String cliente;

  Factura(double valor, this.emisor, this.cliente) : super(valor);

  void imprimirFactura() {
    print("Factura:");
    print("Valor: \$${valor.toStringAsFixed(2)}");
    print("Emisor: $emisor");
    print("Cliente: $cliente");
  }
}

void main() {
  Factura factura = Factura(100.0, "Empresa 1", "Cliente 1");
  factura.imprimirFactura();
}
