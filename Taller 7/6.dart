import 'dart:io';

void main() {
  print('Elija un candidato para votar:');
  print('A. Candidato A (Partido rojo)');
  print('B. Candidato B (Partido verde)');
  print('C. Candidato C (Partido azul)');
  String voto = stdin.readLineSync()!.toUpperCase();

  switch (voto) {
    case 'A':
      print('Usted ha votado por el partido rojo.');
      break;
    case 'B':
      print('Usted ha votado por el partido verde.');
      break;
    case 'C':
      print('Usted ha votado por el partido azul.');
      break;
    default:
      print('Opción errónea.');
  }
}
