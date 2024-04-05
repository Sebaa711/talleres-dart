import 'dart:io';

void main() {
  gestionarClientes();
}

void gestionarClientes() {
  Map<String, Map<String, dynamic>> baseDatosClientes = {};

  while (true) {
    print('Seleccione una opción: '
        '(1) Añadir cliente, (2) Eliminar cliente, (3) Mostrar cliente, '
        '(4) Listar todos los clientes, (5) Listar clientes preferentes, (6) Terminar');
    int opcion = int.parse(stdin.readLineSync()!);

    if (opcion == 1) {
      print('Ingrese el NIF del cliente:');
      String nif = stdin.readLineSync()!;
      print('Ingrese el nombre del cliente:');
      String nombre = stdin.readLineSync()!;
      print('Ingrese la dirección del cliente:');
      String direccion = stdin.readLineSync()!;
      print('Ingrese el teléfono del cliente:');
      String telefono = stdin.readLineSync()!;
      print('Ingrese el correo electrónico del cliente:');
      String correo = stdin.readLineSync()!;
      print('¿Es cliente preferente? (true/false):');
      bool preferente = stdin.readLineSync()!.toLowerCase() == 'true';

      baseDatosClientes[nif] = {
        'nombre': nombre,
        'dirección': direccion,
        'teléfono': telefono,
        'correo': correo,
        'preferente': preferente
      };
    } else if (opcion == 2) {
      print('Ingrese el NIF del cliente a eliminar:');
      String nif = stdin.readLineSync()!;
      if (baseDatosClientes.containsKey(nif)) {
        baseDatosClientes.remove(nif);
        print('Cliente eliminado exitosamente');
      } else {
        print('¡El cliente no existe en la base de datos!');
      }
    } else if (opcion == 3) {
      print('Ingrese el NIF del cliente a mostrar:');
      String nif = stdin.readLineSync()!;
      if (baseDatosClientes.containsKey(nif)) {
        print(baseDatosClientes[nif]);
      } else {
        print('¡El cliente no existe en la base de datos!');
      }
    } else if (opcion == 4) {
      baseDatosClientes.forEach((nif, datosCliente) {
        print('NIF: $nif - Nombre: ${datosCliente['nombre']}');
      });
    } else if (opcion == 5) {
      baseDatosClientes.forEach((nif, datosCliente) {
        if (datosCliente['preferente']) {
          print('NIF: $nif - Nombre: ${datosCliente['nombre']}');
        }
      });
    } else if (opcion == 6) {
      break;
    }
  }
}
