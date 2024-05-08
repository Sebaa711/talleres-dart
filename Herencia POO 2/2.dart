class Empleado {
  String nombre;
  String departamento;
  double salario;

  Empleado(this.nombre, this.departamento, this.salario);

  void trabajar() {
    print("$nombre está trabajando en el departamento de $departamento.");
  }
}

class Programador extends Empleado {
  List<String> lenguajes;

  Programador(
      String nombre, String departamento, double salario, this.lenguajes)
      : super(nombre, departamento, salario);

  void programar() {
    print("$nombre está programando en los siguientes lenguajes: $lenguajes");
  }
}

void main() {
  Empleado empleado = Empleado("Juan", "Desarrollo", 3000.0);
  empleado.trabajar();

  Programador programador =
      Programador("Ana", "Desarrollo", 4000.0, ["Java", "Dart", "JavaScript"]);
  programador.trabajar();
  programador.programar();
}
