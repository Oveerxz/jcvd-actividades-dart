import 'dart:io';
import 'estudiante.dart';

bool validarCedula(String cedula) {
  return RegExp(r'^\d{10}$').hasMatch(cedula);
}

bool validarFecha(String fecha) {
  return RegExp(r'^\d{4}-\d{2}-\d{2}$').hasMatch(fecha);
}

bool validarNota(double nota) {
  return nota >= 0 && nota <= 5;
}

void main() {
  List<Estudiante> estudiantes = [];

  while (true) {
    print('\nMenu:');
    print('1. Registrar estudiante');
    print('2. Ver información de estudiante y modificar datos');
    print('3. Salir');
    stdout.write('Ingrese su opción: ');
    String opcion = stdin.readLineSync() ?? '';
    print('');

    switch (opcion) {
      case '1':
        stdout.write('Ingrese la cedula: ');
        String cedula = stdin.readLineSync() ?? '';
        if (!validarCedula(cedula)) {
          print('Cedula invalida.');
          break;
        }

        stdout.write('Ingrese el nombre: ');
        String nombre = stdin.readLineSync() ?? '';

        stdout.write('Ingrese el apellido: ');
        String apellido = stdin.readLineSync() ?? '';

        stdout.write('Ingrese la fecha de nacimiento (AAAA-MM-DD): ');
        String fechaStr = stdin.readLineSync() ?? '';
        if (!validarFecha(fechaStr)) {
          print('Formato de fecha inválido.');
          break;
        }
        DateTime fechaNac = DateTime.parse(fechaStr);

        List<double> notas = [];
        for (int i = 1; i <= 5; i++) {
          stdout.write('Ingrese la nota $i: ');
          double nota = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
          if (!validarNota(nota)) {
            print('Nota invalida.');
            notas = [];
            break;
          }
          notas.add(nota);
        }

        stdout.write('Ingrese la direccion: ');
        String direccion = stdin.readLineSync() ?? '';

        stdout.write('Ingrese el teléfono: ');
        String telefono = stdin.readLineSync() ?? '';

        Estudiante nuevoEstudiante = Estudiante(
            cedula, nombre, apellido, fechaNac, notas, direccion, telefono);
        estudiantes.add(nuevoEstudiante);
        print('Estudiante registrado correctamente.');
        break;

      case '2':
        stdout.write('Ingrese la cedula del estudiante: ');
        String cedulaBuscar = stdin.readLineSync() ?? '';
        Estudiante? estudiante = estudiantes.firstWhere(
            (est) => est.cedula == cedulaBuscar,
            orElse: () => Estudiante('', '', '', DateTime.now(), [], '', ''));
        if (estudiante.cedula.isEmpty) {
          print('Estudiante no encontrado.');
          break;
        }

        estudiante.mostrarUsuario();

        print('\n¿Desea modificar la dirección? (s/n)');
        String modificarDir = (stdin.readLineSync() ?? '').toLowerCase();
        if (modificarDir == 's') {
          stdout.write('Ingrese la nueva dirección: ');
          String nuevaDireccion = stdin.readLineSync() ?? '';
          estudiante.cambiarDireccion(nuevaDireccion);
          print('Dirección modificada correctamente.');
        }

        print('\n¿Desea modificar alguna nota? (s/n)');
        String modificarNotas = (stdin.readLineSync() ?? '').toLowerCase();
        if (modificarNotas == 's') {
          for (int i = 0; i < estudiante.notas.length; i++) {
            stdout.write('Ingrese la nueva nota ${i + 1}: ');
            double nuevaNota = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
            estudiante.notas[i] = nuevaNota;
          }
          estudiante.calcularPromedio();
          print('Notas modificadas correctamente.');
        }
        break;

      case '3':
        return;

      default:
        print('Opción inválida.');
    }
  }
}
