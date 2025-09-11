import 'dart:io';

void main() {
  stdout.write("Digite o valor da compra: ");
  double valor = double.parse(stdin.readLineSync()!);

  double valorFinal = (valor > 100) ? valor * 0.9 : valor;
  print("Valor final da compra: R\$ ${valorFinal.toStringAsFixed(2)}");
}