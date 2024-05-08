class CalculadoraHorasExtras {
  int horasLaboradas;
  int horasNormales = 0;
  int horasExtras = 0;
  int minutosExtras = 0;

  CalculadoraHorasExtras(this.horasLaboradas) {
    calcularHorasExtras();
  }

  void calcularHorasExtras() {
    if (horasLaboradas > 40) {
      horasNormales = 40;
      horasExtras = horasLaboradas - 40;
      minutosExtras = horasExtras * 60;
    } else {
      horasNormales = horasLaboradas;
      horasExtras = 0;
      minutosExtras = 0;
    }
  }

  void mostrarResultado() {
    print("Horas laboradas: $horasLaboradas");
    print("Horas normales: $horasNormales");
    print("Horas extras: $horasExtras");
    print("Minutos extras: $minutosExtras");
  }
}

void main() {
  int horasLaboradas = 45;
  CalculadoraHorasExtras calculadora = CalculadoraHorasExtras(horasLaboradas);
  calculadora.mostrarResultado();
}
