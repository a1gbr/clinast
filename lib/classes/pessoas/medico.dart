import '../../classes/pessoas/funcionario.dart';

class Medico extends Funcionario {
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
    required String turno,
    required String funcao,
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
          turno: turno,
          funcao: funcao,
        );

  @override
  String toString() {
    return 'MEDICO $id SELECIONADO';
  }
}
