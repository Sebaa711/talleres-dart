import 'dart:io';

class Persona {
  String nombre;
  String apellido;

  Persona(this.nombre, this.apellido);
}

class Fecha {
  int dia;
  int mes;
  int anio;

  Fecha(this.dia, this.mes, this.anio);
}

class Libro {
  String titulo;
  Persona autor;
  String ISBN;
  int paginas;
  int edicion;
  String editorial;
  String lugar;
  Fecha fechaEdicion;

  Libro(this.titulo, this.autor, this.ISBN, this.paginas, this.edicion,
      this.editorial, this.lugar, this.fechaEdicion);

  void leerInformacion() {
    print("Ingrese la información del libro:");
    print("Título: ");
    titulo = stdin.readLineSync()!;
    print("Nombre del autor: ");
    String nombreAutor = stdin.readLineSync()!;
    print("Apellido del autor: ");
    String apellidoAutor = stdin.readLineSync()!;
    autor = Persona(nombreAutor, apellidoAutor);
    print("ISBN: ");
    ISBN = stdin.readLineSync()!;
    print("Número de páginas: ");
    paginas = int.parse(stdin.readLineSync()!);
    print("Edición: ");
    edicion = int.parse(stdin.readLineSync()!);
    print("Editorial: ");
    editorial = stdin.readLineSync()!;
    print("Lugar (ciudad y país): ");
    lugar = stdin.readLineSync()!;
    print("Fecha de edición (formato DD/MM/AAAA): ");
    List<String> fecha = stdin.readLineSync()!.split('/');
    int dia = int.parse(fecha[0]);
    int mes = int.parse(fecha[1]);
    int anio = int.parse(fecha[2]);
    fechaEdicion = Fecha(dia, mes, anio);
  }

  void mostrarInformacion() {
    print("Información del libro:");
    print("Título: $titulo");
    print("Autor: ${autor.nombre} ${autor.apellido}");
    print("ISBN: $ISBN");
    print("Número de páginas: $paginas");
    print("Edición: $edicion");
    print("Editorial: $editorial");
    print("Lugar: $lugar");
    print(
        "Fecha de edición: ${fechaEdicion.dia}/${fechaEdicion.mes}/${fechaEdicion.anio}");
  }
}

void main() {
  Libro libro = Libro(
      "1000 años de soledad",
      Persona("Gabriel", "García Márquez"),
      "9780061120091",
      432,
      1,
      "HarperCollins",
      "New York, USA",
      Fecha(1, 1, 1967));

  libro.mostrarInformacion();
}
