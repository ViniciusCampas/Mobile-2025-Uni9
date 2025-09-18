import 'dart:io';

void main() {
  print("=== Cardápio ===");
  print("1 - Pizza (R\$ 30.00)");
  print("2 - Hambúrguer (R\$ 20.00)");
  print("3 - Salada (R\$ 15.00)");
  print("4 - Suco (R\$ 8.00)");
  stdout.write("Escolha uma opção (1-4): ");

  int opcao = int.parse(stdin.readLineSync()!);

  switch (opcao) {
    case 1:
      print("Você escolheu Pizza. Valor: R\$ 30.00");
      break;
    case 2:
      print("Você escolheu Hambúrguer. Valor: R\$ 20.00");
      break;
    case 3:
      print("Você escolheu Salada. Valor: R\$ 15.00");
      break;
    case 4:
      print("Você escolheu Suco. Valor: R\$ 8.00");
      break;
    default:
      print("Opção inválida.");
  }
}
