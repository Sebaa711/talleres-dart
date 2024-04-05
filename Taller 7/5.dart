import 'dart:io';

void main() {
  print('¿Desea una pizza vegetariana? (Sí/No):');
  String opcion = stdin.readLineSync()!.toLowerCase();

  if (opcion == 'sí' || opcion == 'si') {
    print('Ingredientes vegetarianos disponibles:');
    print('1. Pimiento (\$1000)');
    print('2. Tofu (\$2000)');
    print('3. Champiñones (\$3000)');
  } else {
    print('Ingredientes no vegetarianos disponibles:');
    print('1. Pepperoni (\$2000)');
    print('2. Jamón (\$3000)');
    print('3. Salmón (\$5000)');
  }

  print('Seleccione el ingrediente adicional:');
  int seleccion = int.parse(stdin.readLineSync()!);

  double precio = 0;

  if (opcion == 'sí' || opcion == 'si') {
    precio = seleccion == 1
        ? 1000
        : seleccion == 2
            ? 2000
            : seleccion == 3
                ? 3000
                : 0;
    print(
        'Pizza vegetariana con ingrediente adicional seleccionado: \$${precio}');
  } else {
    precio = seleccion == 1
        ? 2000
        : seleccion == 2
            ? 3000
            : seleccion == 3
                ? 5000
                : 0;
    print(
        'Pizza no vegetariana con ingrediente adicional seleccionado: \$${precio}');
  }
}
