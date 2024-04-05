import 'dart:io';

void main() {
  print('Ingrese la cantidad de empleados:');
  int cantidadEmpleados = int.parse(stdin.readLineSync()!);

  int sueldosEntre100y300 = 0;
  int sueldosMasDe300 = 0;
  int gastoTotal = 0;

  for (int i = 0; i < cantidadEmpleados; i++) {
    print('Ingrese el sueldo del empleado ${i + 1}:');
    int sueldo = int.parse(stdin.readLineSync()!);

    if (sueldo >= 100 && sueldo <= 300) {
      sueldosEntre100y300++;
    } else if (sueldo > 300) {
      sueldosMasDe300++;
    }

    gastoTotal += sueldo;
  }

  print('Cantidad de empleados que cobran entre $100 y $300: $sueldosEntre100y300');
  print('Cantidad de empleados que cobran más de $300: $sueldosMasDe300');
  print('Gasto total en sueldos al personal: $gastoTotal');
}
