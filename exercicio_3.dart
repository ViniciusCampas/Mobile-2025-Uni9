import 'dart:io';

void main() {
  stdout.write("Digite seu peso (kg): ");
  double peso = double.parse(stdin.readLineSync()!);

  stdout.write("Digite sua altura (m): ");
  double altura = double.parse(stdin.readLineSync()!);

  double imc = peso / (altura * altura);
  print("Seu IMC é ${imc.toStringAsFixed(1)}");

  if (imc < 18.5) {
    print("Classificação: Abaixo do peso");
  } else if (imc < 25) {
    print("Classificação: Peso normal");
  } else if (imc < 30) {
    print("Classificação: Sobrepeso");
  } else if (imc < 35) {
    print("Classificação: Obesidade grau 1");
  } else if (imc < 40) {
    print("Classificação: Obesidade grau 2");
  } else {
    print("Classificação: Obesidade grau 3");
  }
}
