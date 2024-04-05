import 'dart:io';

void main() {
  print('Ingrese la fecha en formato dd/mm/aaaa:');
  String fecha = stdin.readLineSync()!;
  formatFecha(fecha);
}

void formatFecha(String fecha) {
  List<String> partes = fecha.split('/');
  int dia = int.parse(partes[0]);
  int mes = int.parse(partes[1]);
  int anno = int.parse(partes[2]);

  List<String> nombresMeses = [
    '',
    'enero',
    'febrero',
    'marzo',
    'abril',
    'mayo',
    'junio',
    'julio',
    'agosto',
    'septiembre',
    'octubre',
    'noviembre',
    'diciembre'
  ];

  print('$dia de ${nombresMeses[mes]} de $anno');
}
