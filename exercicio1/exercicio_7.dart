import 'dart:io';

void main() {
  double saldo = 1000.0;
  bool continuar = true;

  while (continuar) {
    print("\n=== Caixa Eletrônico ===");
    print("1 - Saldo");
    print("2 - Saque");
    print("3 - Depósito");
    print("4 - Sair");

    stdout.write("Escolha uma opção: ");
    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        print("Saldo atual: R\$ ${saldo.toStringAsFixed(2)}");
        break;
      case 2:
        stdout.write("Digite o valor do saque: ");
        double saque = double.parse(stdin.readLineSync()!);
        if (saque <= saldo) {
          saldo -= saque;
          print("Saque realizado! Novo saldo: R\$ ${saldo.toStringAsFixed(2)}");
        } else {
          print("Saldo insuficiente.");
        }
        break;
      case 3:
        stdout.write("Digite o valor do depósito: ");
        double deposito = double.parse(stdin.readLineSync()!);
        saldo += deposito;
        print("Depósito realizado! Novo saldo: R\$ ${saldo.toStringAsFixed(2)}");
        break;
      case 4:
        continuar = false;
        print("Encerrando...");
        break;
      default:
        print("Opção inválida.");
    }
  }
}
