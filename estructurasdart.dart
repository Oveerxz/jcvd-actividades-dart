/*import 'dart:io'; Punto1

void main() {
  stdout.write('Ingresa un numero: ');
  int numero = int.parse(stdin.readLineSync()!);

  if (num % 2 == 0 && num % 3 == 0) {
    print('$numero es par y divisible por 3.');
  } else {
    print('$numero no es par y divisible por 3.');
  }
}*/
/*import 'dart:io'; punto2

void main() {
  stdout.write('Ingresa los numeros separados por espacio: ');
  String entrada = stdin.readLineSync()!;
  
  List<String> numStrList = entrada.split(' ');
  List<int> numeros = numStrList.map((str) => int.parse(str)).toList();
  
  numeros.sort();

  print('Lista ordenada de menor a mayor: $numeros');
}*/
/* Punto3
void main() {
  List<Map<String, dynamic>> objects = [];

  addObject(objects, "1", "camisa", "Camisa Negra");
  addObject(objects, "2", "Tenis", "Tenis Nike");
  addObject(objects, "3", "Correa 3", "Correa de cuero");

  print("List of objects:");
  for (var obj in objects) {
    print("Code: ${obj['codigo']}, Name: ${obj['nombre']}, Description: ${obj['descripcion']}");
  }
}

void addObject(List<Map<String, dynamic>> list, String code, String name, String description) {
  Map<String, dynamic> object = {
    'codigo': code, // Cambio de 'code' a 'codigo'
    'nombre': name, // Cambio de 'name' a 'nombre'
    'descripcion': description, // Sin cambios en 'description'
  };
  list.add(object);
}
}*/
/* Punto 4
void main() {
  final double pi = 3.14159;

  stdout.write('Ingresa el radio del circulo: ');
  double radio = double.parse(stdin.readLineSync()!);

  double area = calculateCircleArea(radio, pi);

  print('El area del circulo con radio $radio es: $area');
}

double calculateCircleArea(double radius, double pi) {
  return pi * radius * radius;
}*/
/* punto 5
import 'dart:math';
import 'dart:io';

void main() {
  const double gravedad = 9.81;

  stdout.write('Ingresa la altura desde la que cae el objeto: ');
  double altura = double.parse(stdin.readLineSync()!); 

  double finalVelocidad = calculateFinalVelocidad(altura, gravedad);  

  print('La velocidad del objeto en caida libre es: $finalVelocidad m/s'); //
}

double calculateFinalVelocidad(double altura, double gravedad) { 
  return sqrt(2 * gravedad * altura); 
}*/

/*  punto 6
import 'dart:io';
 
void main() {
  stdout.write('Ingresa un numero: ');
  double numero = double.parse(stdin.readLineSync()!);

  if (numero > 0) {
    print('El numero ingresado es positivo.');
  } else if (numero < 0) {
    print('El numero ingresado es negativo.');
  } else {
    print('El numero ingresado es cero.');
  }
}
*/
/*
import 'dart:io';

void main() {
  stdout.write('Ingresa un numero: ');
  int numero = int.parse(stdin.readLineSync()!);

  String mensaje = (numero % 2 == 0) ? 'par' : 'impar';

  print('El numero ingresado es $mensaje.');
}*/

/* punto 8
import 'dart:io';

void main() {
  stdout.write('Ingresa un numero: ');
  int numero = int.parse(stdin.readLineSync()!);

  bool divisibleEntre5 = numero % 5 == 0;
  bool divisibleEntre7 = numero % 7 == 0;
  bool divisiblePor5y7 = divisibleEntre5 && divisibleEntre7;

  if (divisiblePor5y7) {
    print('El numero ingresado es divisible por 5 y 7 al mismo tiempo.');
  } else {
    print('El numero ingresado no es divisible por 5 y 7 al mismo tiempo.');
  }
}*/
/* punto 9
import 'dart:io';

void main() {
  stdout.write('Ingresa el primer numero: ');
  double numero1 = double.parse(stdin.readLineSync()!);

  stdout.write('Ingresa el segundo numero: ');
  double numero2 = double.parse(stdin.readLineSync()!);

  stdout.write('Ingresa la operacion (+, -, *, /): ');
  String operacion = stdin.readLineSync()!;

  double result;
  switch (operacion) {
    case '+':
      result = numero1 + numero2;
      break;
    case '-':
      result = numero1 - numero2;
      break;
    case '*':
      result = numero1 * numero2;
      break;
    case '/':
      if (num2 != 0) {
        result = numero1 / numero2;
      } else {
        print('Error: No se puede dividir por cero.');
        return;
      }
      break;
    default:
      print('Error: Operacion no valida.');
      return;
  }*/
  
  /* punto 10
  void main() {
  
  int a = 0;
  int b = 1;

  
  print(a);
  print(b);

  for (int i = 2; i < 20; i++) {
    int c = a + b; 
    print(c); 
    a = b; 
    b = c;
  }
}*/

/* punto 11.
import 'dart:io';

void main() {
   print("Ingrese los numeros separados por espacios:");
  List<int> numeros = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  
 int suma = sumarNumeros(numeros);
  
    print("La suma de los numeros es: $suma");
}

int sumarNumeros(List<int> numeros) {
  int suma = 0;
  for (int numero in numeros) {
    suma += numero;
  }
  return suma;
}*/

/* punto 12.
import 'dart:io';

void main() {
  List<int> numeros = [1, 2, 3, 4, 5];

 print("Ingrese el valor por el cual desea multiplicar los numeros:");
  int valor = int.parse(stdin.readLineSync()!);

  numeros.forEach((numero) {
    print("$numero multiplicado por $valor es igual a ${numero * valor}");
  });
}*/

/* punto 13.

void main() {
  int numero = 1; 
  while (numero <= 10) {
    print(numero);
    numero++; 
  }
}*/


/* punto 14.
import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int numeroAleatorio = random.nextInt(100) + 1;

  int intentos = 0;
  int intentoUsuario;

  print("Adivina un numero entre 1 y 100.");

  do {
    print("Ingresa tu intento:");
    intentoUsuario = int.parse(stdin.readLineSync()!);
    intentos++;

    if (intentoUsuario < numeroAleatorio) {
      print("El numero es mayor.");
    } else if (intentoUsuario > numeroAleatorio) {
      print("El numero es menor.");
    }
  } while (intentoUsuario != numeroAleatorio);

  print("Felicidades, Adivinaste el numero $numeroAleatorio en $intentos intentos.");
}*/

/* punto 15. 
void main() {
  imprimirHolaMundo();
}

void imprimirHolaMundo() {
  print("Hola, mundo");
}*/

/* punto 16.
import 'dart:io';

void main() {
  print("Ingrese el primer numero:");
  int num1 = int.parse(stdin.readLineSync()!);
  
  print("Ingrese el segundo numero:");
  int num2 = int.parse(stdin.readLineSync()!);

  int suma = sumarNumeros(num1, num2);
  
  print("La suma de $num1 y $num2 es: $suma");
}

int sumarNumeros(int num1, int num2) {
  return num1 + num2;
}*/



/* punto 17. 
import 'dart:io';

void main() {
  print("Ingrese la base del rectangulo:");
  double base = double.parse(stdin.readLineSync()!);
  
  print("Ingrese la altura del rectangulo:");
  double altura = double.parse(stdin.readLineSync()!);

    double area = calcularAreaRectangulo(base, altura);
  
  print("El area del rectangulo es: $area");
}

double calcularAreaRectangulo(double base, double altura) => base * altura; */

/* punto 18. 
import 'dart:io';
import 'dart:math';

void main() {
  print("Ingrese la base:");
  int base = int.parse(stdin.readLineSync()!);
  
  print("Ingrese el exponente (opcional, presione Enter para usar 1 por defecto):");
  int exponente = int.tryParse(stdin.readLineSync()!) ?? 1;

  int resultado = calcularPotencia(base, exponente);
  print("$base elevado a la $exponente es igual a $resultado");
}

int calcularPotencia(int base, [int exponente = 1]) {
  return pow(base, exponente).toInt();
}*/


/* punto 19.
import 'dart:io';

void main() {
  print("Ingrese un numero para verificar si es primo:");
  int numero = int.parse(stdin.readLineSync()!);

  if (esPrimo(numero)) {
    print("$numero es primo.");
  } else {
    print("$numero no es primo.");
  }
}
bool esPrimo(int numero) {
  if (numero <= 1) {
    return false;
  }
  for (int i = 2; i <= numero / 2; i++) {
    if (numero % i == 0) {
      return false;
    }
  }
  return true;
}*/

/* punto 20. 
import 'dart:io';

void main() {
  print("Ingrese un numero para calcular su factorial:");
  int numero = int.parse(stdin.readLineSync()!);
  
  int factorial = calcularFactorial(numero);
  
  print("El factorial de $numero es: $factorial");
}

int calcularFactorial(int numero) {
  int resultado = 1;
  for (int i = 1; i <= numero; i++) {
    resultado *= i;
  }
  return resultado;
}*/

