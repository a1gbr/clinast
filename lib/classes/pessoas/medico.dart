import 'package:clinast/classes/pessoas/pessoa.dart';

class Medico extends Pessoa {
  final String crm;
  final String especialidade;

  Medico({
    required String nome,
    required String dataNascimento,
    required String rua,
    required String bairro,
    required String cidade,
    required String cep,
    required String telefone,
    required String cpf,
    required this.crm,
    required this.especialidade,
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
    return 'Médico(id: $id, nome: $nome, dataNascimento: $dataNascimento, rua: $rua, bairro: $bairro, cidade: $cidade, cep: $cep, telefone: $telefone, cpf: $cpf, crm: $crm, especialidade: $especialidade)';
  }
}
