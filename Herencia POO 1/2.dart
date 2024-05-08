class Producto {
  DateTime fechaCaducidad;
  int numeroLote;

  Producto(this.fechaCaducidad, this.numeroLote);
}

class ProductoFresco extends Producto {
  DateTime fechaEnvasado;
  String paisOrigen;

  ProductoFresco(DateTime fechaCaducidad, int numeroLote, this.fechaEnvasado,
      this.paisOrigen)
      : super(fechaCaducidad, numeroLote);
}

class ProductoRefrigerado extends Producto {
  String codigoOrganismo;
  DateTime fechaEnvasado;
  double temperaturaRecomendada;
  String paisOrigen;

  ProductoRefrigerado(
      DateTime fechaCaducidad,
      int numeroLote,
      this.codigoOrganismo,
      this.fechaEnvasado,
      this.temperaturaRecomendada,
      this.paisOrigen)
      : super(fechaCaducidad, numeroLote);
}

class ProductoCongelado extends Producto {
  DateTime fechaEnvasado;
  String paisOrigen;
  double temperaturaRecomendada;

  ProductoCongelado(DateTime fechaCaducidad, int numeroLote, this.fechaEnvasado,
      this.paisOrigen, this.temperaturaRecomendada)
      : super(fechaCaducidad, numeroLote);
}

class CongeladoAire extends ProductoCongelado {
  double porcentajeNitrogeno;
  double porcentajeOxigeno;
  double porcentajeDioxidoCarbono;
  double porcentajeVaporAgua;

  CongeladoAire(
      DateTime fechaCaducidad,
      int numeroLote,
      DateTime fechaEnvasado,
      String paisOrigen,
      double temperaturaRecomendada,
      this.porcentajeNitrogeno,
      this.porcentajeOxigeno,
      this.porcentajeDioxidoCarbono,
      this.porcentajeVaporAgua)
      : super(fechaCaducidad, numeroLote, fechaEnvasado, paisOrigen,
            temperaturaRecomendada);
}

class CongeladoAgua extends ProductoCongelado {
  double salinidadAgua;

  CongeladoAgua(DateTime fechaCaducidad, int numeroLote, DateTime fechaEnvasado,
      String paisOrigen, double temperaturaRecomendada, this.salinidadAgua)
      : super(fechaCaducidad, numeroLote, fechaEnvasado, paisOrigen,
            temperaturaRecomendada);
}

class CongeladoNitrigeno extends ProductoCongelado {
  String metodoCongelacion;
  int tiempoExposicionNitrigeno;

  CongeladoNitrigeno(
      DateTime fechaCaducidad,
      int numeroLote,
      DateTime fechaEnvasado,
      String paisOrigen,
      double temperaturaRecomendada,
      this.metodoCongelacion,
      this.tiempoExposicionNitrigeno)
      : super(fechaCaducidad, numeroLote, fechaEnvasado, paisOrigen,
            temperaturaRecomendada);
}

void main() {
  ProductoFresco productoFresco = ProductoFresco(
    DateTime(2024, 5, 10),
    12345,
    DateTime(2024, 5, 5),
    "España",
  );

  print("Producto Fresco:");
  print("Fecha de Caducidad: ${productoFresco.fechaCaducidad}");
  print("Número de Lote: ${productoFresco.numeroLote}");
  print("Fecha de Envasado: ${productoFresco.fechaEnvasado}");
  print("País de Origen: ${productoFresco.paisOrigen}");
  print("");

  ProductoRefrigerado productoRefrigerado = ProductoRefrigerado(
    DateTime(2024, 5, 15),
    54321,
    "123ABC",
    DateTime(2024, 5, 8),
    -2.5,
    "Francia",
  );

  print("Producto Refrigerado:");
  print("Fecha de Caducidad: ${productoRefrigerado.fechaCaducidad}");
  print("Número de Lote: ${productoRefrigerado.numeroLote}");
  print("Código de Organismo: ${productoRefrigerado.codigoOrganismo}");
  print("Fecha de Envasado: ${productoRefrigerado.fechaEnvasado}");
  print(
      "Temperatura Recomendada: ${productoRefrigerado.temperaturaRecomendada}");
  print("País de Origen: ${productoRefrigerado.paisOrigen}");
  print("");

  CongeladoAire congeladoAire = CongeladoAire(
    DateTime(2024, 5, 20),
    98765,
    DateTime(2024, 5, 12),
    "Italia",
    -18.0,
    80.0,
    18.0,
    2.0,
    0.0,
  );

  print("Congelado por Aire:");
  print("Fecha de Caducidad: ${congeladoAire.fechaCaducidad}");
  print("Número de Lote: ${congeladoAire.numeroLote}");
  print("Fecha de Envasado: ${congeladoAire.fechaEnvasado}");
  print("País de Origen: ${congeladoAire.paisOrigen}");
  print("Temperatura Recomendada: ${congeladoAire.temperaturaRecomendada}");
  print("Porcentaje de Nitrógeno: ${congeladoAire.porcentajeNitrogeno}");
  print("Porcentaje de Oxígeno: ${congeladoAire.porcentajeOxigeno}");
  print(
      "Porcentaje de Dióxido de Carbono: ${congeladoAire.porcentajeDioxidoCarbono}");
  print("Porcentaje de Vapor de Agua: ${congeladoAire.porcentajeVaporAgua}");
}
