import 'dart:io';

void main() {
  print('Ingrese las horas trabajadas:');
  int horasTrabajadas = int.parse(stdin.readLineSync()!);

  print('Ingrese el valor por hora:');
  double valorHora = double.parse(stdin.readLineSync()!);

  double salario = 0;

  if (horasTrabajadas <= 40) {
    salario = horasTrabajadas * valorHora;
  } else {
    salario = (40 * valorHora) + ((horasTrabajadas - 40) * valorHora * 1.5);
  }

  print('El salario del trabajador es: \$${salario.toStringAsFixed(2)}');
}
