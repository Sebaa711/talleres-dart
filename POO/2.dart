class Cafetera {
  int _capacidadMaxima = 1000;
  int _cantidadActual = 0;

  void servirTaza(int capacidadTaza) {
    if (_cantidadActual >= capacidadTaza) {
      _cantidadActual -= capacidadTaza;
      print("Se ha servido una taza de café de $capacidadTaza c.c.");
    } else {
      print("No hay suficiente café en la cafetera para llenar la taza.");
      print("Se ha servido una taza de café de $_cantidadActual c.c.");
      _cantidadActual = 0;
    }
  }

  void vaciarCafetera() {
    _cantidadActual = 0;
    print("La cafetera ha sido vaciada.");
  }

  void agregarCafe(int cantidad) {
    _cantidadActual = (_cantidadActual + cantidad).clamp(0, _capacidadMaxima);
    print("Se han agregado $cantidad c.c. de café a la cafetera.");
  }

  void mostrarCantidadActual() {
    print("Cantidad actual de café en la cafetera: $_cantidadActual c.c.");
  }
}

void main() {
  Cafetera cafetera = Cafetera();

  cafetera.mostrarCantidadActual();
  cafetera.agregarCafe(500);
  cafetera.mostrarCantidadActual();
  cafetera.servirTaza(200);
  cafetera.mostrarCantidadActual();
  cafetera.servirTaza(800);
  cafetera.mostrarCantidadActual();
  cafetera.vaciarCafetera();
  cafetera.mostrarCantidadActual();
}
