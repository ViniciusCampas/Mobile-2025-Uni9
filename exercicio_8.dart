import 'dart:io';

void main() {
  stdout.write("Digite o lado A: ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o lado B: ");
  double b = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o lado C: ");
  double c = double.parse(stdin.readLineSync()!);

  if (a + b > c && a + c > b && b + c > a) {
    if (a == b && b == c) {
      print("Triângulo Equilátero");
    } else if (a == b || a == c || b == c) {
      print("Triângulo Isósceles");
    } else {
      print("Triângulo Escaleno");
    }
  } else {
    print("Os valores não formam um triângulo.");
  }
}
