import 'cliente.dart';
import 'dart:math';

class ContaCliente{

  Cliente pessoa;
  double saldo = 0;
  String banco;
  int numConta = Random().nextInt(20000);

  ContaCliente(this.pessoa, this.saldo, this.banco);

  void extrato(){
    print("Nome: ${pessoa.nome}");
    print("CPF: ${pessoa.cpf}");
    print("Banco: $banco");
    print("Conta: $numConta");
    print("Saldo atual: $saldo");
  }

  void depositar(double valor){
    saldo = saldo + valor;
  }

  void sacar(double valor){
    if(valor > saldo){
      print("Seu saldo é insuficiente para essa operação");
    }
    else{
      saldo = saldo - valor;
    }
  }

}