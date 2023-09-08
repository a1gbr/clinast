import 'pessoa.dart';
import 'shared/cargo.dart';

class Funcionario extends Pessoa {
  final Cargo cargo;
  List<String>? turno;

  Funcionario({
    required String nome,
    required DateTime dataNascimento,
    required String endereco,
    required String bairro,
    required String cidade,
    required String cep,
    required String telefone,
    required String cpf,
    required this.cargo,
    required this.turno,
  }) : super(
          nome: nome,
          dataNascimento: dataNascimento,
          endereco: endereco,
          bairro: bairro,
          cidade: cidade,
          cep: cep,
          telefone: telefone,
          cpf: cpf,
        );
}
