import 'cliente.dart';
import 'contaCliente.dart';
import 'dart:io';

main() {
  print("Seja bem vindo(a)! Vamos criar sua conta\n");

  stdout.write("\nDigite seu nome: ");
  var nome = stdin.readLineSync().toString();

  stdout.write("\nDigite seu CPF: ");
  var cpf = stdin.readLineSync();

  var cliente1 = Cliente(nome, cpf);

  stdout.write("\nEm qual banco você deseja criar sua conta? ");
  var banco = stdin.readLineSync();

  var conta1 = ContaCliente(cliente1, 0, banco!);

  print("\nSeu saldo atual é de ${conta1.saldo} reais");

  while (true) {
    print("\n(1) Depositar");
    print("\n(2) Sacar");
    print("\n(3) Ver Extrato");
    print("\n(4) Sair");
    stdout.write("\nDigite qual operação deseja fazer: ");
    var resp2 = int.parse(stdin.readLineSync().toString());

      switch (resp2) {
        // ignore: constant_pattern_never_matches_value_type
        case 1:
          stdout.write("\nDigite o valor do depósito: ");
          var dep = double.parse(stdin.readLineSync().toString());
          conta1.depositar(dep);
          break;
        // ignore: constant_pattern_never_matches_value_type
        case 2:
          stdout.write("\nDigite o valor do saque: ");
          var saque = double.parse(stdin.readLineSync().toString());
          conta1.sacar(saque);
          break;
        // ignore: constant_pattern_never_matches_value_type
        case 3:
          conta1.extrato();
          break;
        case 4:
          print("\nSessão Finalizada!");
          return;
        default:
          print("\nOpção Inválida!"); 
      }
    }
  }