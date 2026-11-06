
import 'dart:io';

void main() {
  print('================================');
  print('     OBSERVACION AGRICOLA');
  print('================================');

  stdout.write('Ingrese el departamento: ');
  String departamento = stdin.readLineSync() ?? '';

  stdout.write('Ingrese el municipio: ');
  String municipio = stdin.readLineSync() ?? '';

  stdout.write('Ingrese el nombre del cultivo: ');
  String cultivo = stdin.readLineSync() ?? '';

  stdout.write('Ingrese el año de observacion: ');
  int anio = int.parse(stdin.readLineSync() ?? '0');

  stdout.write('Ingrese el area sembrada en hectareas: ');
  double area = double.parse(stdin.readLineSync() ?? '0');

  print('\n--- RESUMEN DE LA OBSERVACION ---');
  print('Departamento: $departamento');
  print('Municipio: $municipio');
  print('Cultivo: $cultivo');
  print('Año: $anio');
  print('Area sembrada: ${area.toStringAsFixed(2)} hectareas');
}

