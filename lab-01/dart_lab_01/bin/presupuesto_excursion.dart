
import 'dart:io';

// Calcula el costo total del alojamiento
double calcularAlojamiento(double costoPorNoche, int noches) {
  return costoPorNoche * noches;
}

// Calcula el costo total de alimentación del grupo
double calcularAlimentacion(
    double costoDiario, int dias, int viajeros) {
  return costoDiario * dias * viajeros;
}

// Calcula el presupuesto general
double calcularPresupuesto(
    double transporte, double alojamiento, double alimentacion) {
  return transporte + alojamiento + alimentacion;
}

// Calcula el valor que paga cada viajero
double calcularPorPersona(double total, int viajeros) {
  return total / viajeros;
}

// Calcula el porcentaje del transporte
double calcularPorcentajeTransporte(double transporte, double total) {
  return (transporte / total) * 100;
}

void main() {
  print('======================================');
  print('     PRESUPUESTO DE EXCURSION');
  print('======================================');

  stdout.write('Ingrese el destino: ');
  String destino = stdin.readLineSync() ?? '';

  stdout.write('Cantidad de viajeros: ');
  int viajeros = int.parse(stdin.readLineSync() ?? '');

  stdout.write('Cantidad de dias del viaje: ');
  int dias = int.parse(stdin.readLineSync() ?? '');

  stdout.write('Cantidad de noches de alojamiento: ');
  int noches = int.parse(stdin.readLineSync() ?? '');

  stdout.write('Costo total del transporte: ');
  double transporte = double.parse(stdin.readLineSync() ?? '');

  stdout.write('Costo del alojamiento por noche para todo el grupo: ');
  double costoAlojamiento = double.parse(stdin.readLineSync() ?? '');

  stdout.write('Costo diario de alimentacion por persona: ');
  double costoAlimentacion = double.parse(stdin.readLineSync() ?? '');

  // Calculos
  double alojamiento = calcularAlojamiento(costoAlojamiento, noches);

  double alimentacion =
      calcularAlimentacion(costoAlimentacion, dias, viajeros);

  double total = calcularPresupuesto(
      transporte, alojamiento, alimentacion);

  double valorPersona = calcularPorPersona(total, viajeros);

  double porcentajeTransporte =
      calcularPorcentajeTransporte(transporte, total);

  // Informe final
  print('\n======================================');
  print('       INFORME DE LA EXCURSION');
  print('======================================');

  print('Destino: $destino');
  print('Cantidad de viajeros: $viajeros');
  print('Dias de viaje: $dias');
  print('Noches de alojamiento: $noches');

  print('\n--- DESGLOSE DE COSTOS ---');

  print('Transporte: \$${transporte.toStringAsFixed(2)}');
  print('Alojamiento: \$${alojamiento.toStringAsFixed(2)}');
  print('Alimentacion: \$${alimentacion.toStringAsFixed(2)}');

  print('\n--- RESULTADOS ---');

  print('Presupuesto general: \$${total.toStringAsFixed(2)}');
  print('Pago por persona: \$${valorPersona.toStringAsFixed(2)}');
  print('Participacion del transporte: ${porcentajeTransporte.toStringAsFixed(2)}%');

  print('\nPresupuesto calculado correctamente.');
}
