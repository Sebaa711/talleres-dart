void main() {
  print(
      "Poblacion A tiene un crecimiento anual de 15%\nPoblacion B tiene un crecimiento anual de 7% ");

  Map<String, Map<String, dynamic>> poblaciones = {
    "A": {"poblacion": 3500000, "crecimientoAnual": 0.15},
    "B": {"poblacion": 5000000, "crecimientoAnual": 0.07}
  };

  int anioActual = 1980;
  while (poblaciones["A"]!["poblacion"] < poblaciones["B"]!["poblacion"]) {
    var datosPoblaciones = poblaciones.values;
    datosPoblaciones.forEach((poblacion) {
      poblacion["poblacion"] +=
          poblacion["poblacion"] *= poblacion["crecimientoAnual"];
    });

    anioActual++;
  }

  print("Poblacion A superara a poblacion B en $anioActual");
}
