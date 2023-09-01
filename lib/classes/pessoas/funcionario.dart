import 'package:clinast/classes/pessoas/pessoa.dart';

class Funcionario extends Pessoa {
  final String turno;
  final String funcao;

  Funcionario({
    required String nome,
    required String dataNascimento,
    required String rua,
    required String bairro,
    required String cidade,
    required String cep,
    required String telefone,
    required String cpf,
    required this.turno,
    required this.funcao,
  }) : super(
          nome: nome,
          dataNascimento: dataNascimento,
          rua: rua,
          bairro: bairro,
          cidade: cidade,
          cep: cep,
          telefone: telefone,
          cpf: cpf,
        );

  @override
  String toString() {
    return 'Funcionário(id: $id, nome: $nome, dataNascimento: $dataNascimento, rua: $rua, bairro: $bairro, cidade: $cidade, cep: $cep, telefone: $telefone, cpf: $cpf, turno: $turno, função: $funcao)';
  }
}
