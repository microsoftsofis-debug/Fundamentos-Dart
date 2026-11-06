
void main() {
  String nombreCultivo = 'Cafe';
  double area = 2.5;

  mostrarObservacion(nombreCultivo, area);

  double resultado = calcularAreaDoble(area);

  print('El doble del area registrada es: $resultado hectareas');
}

// Funcion para mostrar la observacion
void mostrarObservacion(String cultivo, double hectareas) {
  print('--- OBSERVACION AGRICOLA ---');
  print('Cultivo: $cultivo');
  print('Area: $hectareas hectareas');
}

// Funcion que devuelve un resultado
double calcularAreaDoble(double area) {
  return area * 2;
}
