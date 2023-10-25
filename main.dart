import 'cliente.dart';
import 'contaCliente.dart';
import 'dart:io';

main(){

  print("Seja bem vindo(a)! Vamos criar sua conta");

  stdout.write("Digite seu nome: ");
  var nome = stdin.readLineSync().toString();

  stdout.write("Digite seu CPF: ");
  var cpf = stdin.readLineSync();

  var cliente1 = Cliente(nome, cpf);

  stdout.write("Em qual banco você deseja criar sua conta? ");
  var banco = stdin.readLineSync();

  var conta1 = ContaCliente(cliente1, 0, banco!);

  print("Seu saldo atual é de ${conta1.saldo} reais");
  stdout.write("Você deseja fazer alguma operação? (sim/nao) ");






  




  
  
}