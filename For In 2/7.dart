import 'dart:io';

void main() {
  llenarDiccionarioPersona();
}

void llenarDiccionarioPersona() {
  Map<String, dynamic> persona = {};

  void agregarDato(String clave, dynamic valor) {
    persona[clave] = valor;
    print(persona);
  }

  agregarDato('nombre', 'Juan');
  agregarDato('edad', 30);
  agregarDato('sexo', 'masculino');
  agregarDato('teléfono', '123456789');
  agregarDato('correo electrónico', 'juan@example.com');
}
