import '../models/shared/turno.dart';
import 'funcionario.dart';
import 'shared/cargo.dart';
import 'shared/especialidade.dart';

class Medico extends Funcionario {
  final Especialidade especialidade;
  final String crm;

  Medico({
    required String nome,
    required DateTime dataNascimento,
    required String endereco,
    required String bairro,
    required String cidade,
    required String cep,
    required String telefone,
    required String cpf,
    required Cargo cargo,
    required List<Turno> turno,
    required this.especialidade,
    required this.crm,
  }) : super(
          nome: nome,
          dataNascimento: dataNascimento,
          endereco: endereco,
          bairro: bairro,
          cidade: cidade,
          cep: cep,
          telefone: telefone,
          cpf: cpf,
          cargo: cargo,
          turno: turno,
        );

  @override
  String toString() {
    return nome;
  }
}
