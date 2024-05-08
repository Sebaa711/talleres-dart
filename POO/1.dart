class Cuenta {
  int numeroCuenta;
  String numeroDocumentoCliente;
  double saldoActual;
  double interesAnual;

  Cuenta(this.numeroCuenta, this.numeroDocumentoCliente, this.saldoActual,
      this.interesAnual);

  void actualizarSaldo() {
    double interesDiario = interesAnual / 365;
    double interesAplicado = saldoActual * interesDiario;
    saldoActual += interesAplicado;
  }

  void ingresar(double cantidad) {
    saldoActual += cantidad;
  }

  bool retirar(double cantidad) {
    if (cantidad <= saldoActual) {
      saldoActual -= cantidad;
      return true;
    } else {
      print("No hay suficiente saldo en la cuenta.");
      return false;
    }
  }

  void mostrar() {
    print("Número de Cuenta: $numeroCuenta");
    print("Número de Documento del Cliente: $numeroDocumentoCliente");
    print("Saldo Actual: \$${saldoActual.toStringAsFixed(2)}");
    print("Interés Anual: ${interesAnual.toStringAsFixed(2)}%");
  }
}

void main() {
  Cuenta cuenta = Cuenta(123456789, "123456789A", 1000.0, 5.0);

  cuenta.mostrar();
  cuenta.actualizarSaldo();
  cuenta.mostrar();

  cuenta.ingresar(500.0);
  cuenta.mostrar();

  cuenta.retirar(200.0);
  cuenta.mostrar();

  cuenta.retirar(2000.0);
}
