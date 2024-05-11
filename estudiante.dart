class Estudiante {
  String cedula;
  String nombre;
  String apellido;
  DateTime fechaNac;
  List<double> notas;
  double promedio = 0;
  String direccion;
  String telefono;

  Estudiante(this.cedula, this.nombre, this.apellido, this.fechaNac, this.notas,
      this.direccion, this.telefono) {
    calcularPromedio();
  }

  void cambiarDireccion(String nuevaDireccion) {
    direccion = nuevaDireccion;
  }

  void calcularPromedio() {
    if (notas.isNotEmpty) {
      double sum = notas.reduce((a, b) => a + b);
      promedio = sum / notas.length;
    } else {
      promedio = 0;
    }
  }

  void mostrarUsuario() {
    print('Cédula: $cedula');
    print('Nombre: $nombre $apellido');
    print('Fecha de nacimiento: ${fechaNac.toString().split(' ')[0]}');
    print('Notas: $notas');
    print('Promedio: $promedio');
    print('Dirección: $direccion');
    print('Teléfono: $telefono');
  }
}
