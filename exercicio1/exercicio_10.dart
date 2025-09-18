import 'dart:io';
import 'dart:math';

void main() {
  int numeroSecreto = Random().nextInt(100) + 1;
  int palpite = 0;

  print("Tente adivinhar o número entre 1 e 100!");

  while (palpite != numeroSecreto) {
    stdout.write("Digite seu palpite: ");
    palpite = int.parse(stdin.readLineSync()!);

    palpite == numeroSecreto
        ? print("Parabéns! Você acertou!")
        : print(palpite > numeroSecreto ? "Muito alto!" : "Muito baixo!");
  }
}
