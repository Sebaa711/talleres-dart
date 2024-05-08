class Multimedia {
  String _titulo;
  String _autor;
  String _formato;
  double _duracion;

  Multimedia(this._titulo, this._autor, this._formato, this._duracion);

  String get titulo => _titulo;
  String get autor => _autor;
  String get formato => _formato;
  double get duracion => _duracion;

  @override
  String toString() {
    return 'Multimedia: Titulo:$_titulo, Autor:$_autor, Formato:$_formato, Duracion:$_duracion';
  }

  bool equals(Multimedia otro) {
    return (_titulo == otro.titulo && _autor == otro.autor);
  }
}

void main() {
  Multimedia multimedia1 = Multimedia("Cancion 1", "Autor 1", "mp4", 2.5);
  Multimedia multimedia2 =
      Multimedia("Inception", "Christopher Nolan", "avi", 3.0);
  Multimedia multimedia3 = Multimedia("Cancion 1", "Autor 1", "mp4", 2.5);

  print(multimedia1);
  print(multimedia2);
  print(multimedia3);

  print(
      "Multimedia 1 es igual a Multimedia 2: ${multimedia1.equals(multimedia2)}");
  print(
      "Multimedia 1 es igual a Multimedia 3: ${multimedia1.equals(multimedia3)}");
}
