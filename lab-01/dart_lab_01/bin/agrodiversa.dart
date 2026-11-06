
import 'dart:io';

// Funcion para calcular el area total
double calcularAreaTotal(double area1, double area2, double area3) {
  return area1 + area2 + area3;
}

// Funcion para calcular el promedio
double calcularPromedio(double total, int cantidad) {
  return total / cantidad;
}

// Funcion para calcular el porcentaje de participacion
double calcularParticipacion(double area, double total) {
  return (area / total) * 100;
}

void main() {
  print('======================================');
  print('       SISTEMA AGRODIVERSA');
  print('======================================');

  stdout.write('Ingrese el departamento: ');
  String departamento = stdin.readLineSync() ?? '';

  stdout.write('Ingrese el municipio: ');
  String municipio = stdin.readLineSync() ?? '';

  stdout.write('Ingrese el año de observacion: ');
  int anio = int.parse(stdin.readLineSync() ?? '0');

  print('\n--- REGISTRO DE CULTIVOS ---');

  stdout.write('Nombre del primer cultivo: ');
  String cultivo1 = stdin.readLineSync() ?? '';

  stdout.write('Area del primer cultivo (hectareas): ');
  double area1 = double.parse(stdin.readLineSync() ?? '0');

  stdout.write('Nombre del segundo cultivo: ');
  String cultivo2 = stdin.readLineSync() ?? '';

  stdout.write('Area del segundo cultivo (hectareas): ');
  double area2 = double.parse(stdin.readLineSync() ?? '0');

  stdout.write('Nombre del tercer cultivo: ');
  String cultivo3 = stdin.readLineSync() ?? '';

  stdout.write('Area del tercer cultivo (hectareas): ');
  double area3 = double.parse(stdin.readLineSync() ?? '0');

  // Calculos generales
  double total = calcularAreaTotal(area1, area2, area3);
  double promedio = calcularPromedio(total, 3);

  double porcentaje1 = calcularParticipacion(area1, total);
  double porcentaje2 = calcularParticipacion(area2, total);
  double porcentaje3 = calcularParticipacion(area3, total);

  // Presentacion de resultados
  print('\n======================================');
  print('       RESULTADOS AGRODIVERSA');
  print('======================================');

  print('Departamento: $departamento');
  print('Municipio: $municipio');
  print('Año: $anio');

  print('\n--- CULTIVOS REGISTRADOS ---');

  print('$cultivo1: ${area1.toStringAsFixed(2)} hectareas');
  print('Participacion: ${porcentaje1.toStringAsFixed(2)}%');

  print('$cultivo2: ${area2.toStringAsFixed(2)} hectareas');
  print('Participacion: ${porcentaje2.toStringAsFixed(2)}%');

  print('$cultivo3: ${area3.toStringAsFixed(2)} hectareas');
  print('Participacion: ${porcentaje3.toStringAsFixed(2)}%');

  print('\nArea total: ${total.toStringAsFixed(2)} hectareas');
  print('Promedio por cultivo: ${promedio.toStringAsFixed(2)} hectareas');

  print('\nRegistro finalizado correctamente.');
}



