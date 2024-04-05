import 'dart:io';

void main() {
  print('Ingrese su edad:');
  int edad = int.parse(stdin.readLineSync()!);

  print('Ingrese su salario mensual:');
  double salario = double.parse(stdin.readLineSync()!);

  double salarioMinimo =
      908526; // Salario mínimo legal vigente en Colombia para 2022

  if (edad > 30 && salario > 2 * salarioMinimo) {
    double impuesto = salario * 0.20 * 12; // 20% del salario anual
    print(
        'Debe pagar impuestos por un monto de \$${impuesto.toStringAsFixed(2)} al año.');
  } else if (edad > 50 && salario > salarioMinimo) {
    double impuesto = salario * 0.10 * 12; // 10% del salario anual
    print(
        'Debe pagar impuestos por un monto de \$${impuesto.toStringAsFixed(2)} al año.');
  } else {
    print('No debe pagar impuestos.');
  }
}
