
void main() {
  double areaCafe = 2.5;
  double areaMaiz = 1.8;
  double areaPlatano = 3.2;

  double areaTotal = areaCafe + areaMaiz + areaPlatano;
  double promedio = areaTotal / 3;

  print('--- CALCULO DE AREAS AGRICOLAS ---');
  print('Area de cafe: $areaCafe hectareas');
  print('Area de maiz: $areaMaiz hectareas');
  print('Area de platano: $areaPlatano hectareas');

  print('Area total: ${areaTotal.toStringAsFixed(2)} hectareas');
  print('Promedio: ${promedio.toStringAsFixed(2)} hectareas');
}
