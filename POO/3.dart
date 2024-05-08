class Cancion {
  String _titulo;
  String _autor;

  Cancion(this._titulo, this._autor);

  String dameTitulo() {
    return _titulo;
  }

  String dameAutor() {
    return _autor;
  }

  void ponTitulo(String titulo) {
    _titulo = titulo;
  }

  void ponAutor(String autor) {
    _autor = autor;
  }
}

void main() {
  Cancion cancion = Cancion("Bohemian Rhapsody", "Queen");

  print("Título de la canción: ${cancion.dameTitulo()}");
  print("Autor de la canción: ${cancion.dameAutor()}");

  cancion.ponTitulo("Stairway to Heaven");
  cancion.ponAutor("Led Zeppelin");

  print("Título de la canción: ${cancion.dameTitulo()}");
  print("Autor de la canción: ${cancion.dameAutor()}");
}
