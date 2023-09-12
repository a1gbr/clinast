import 'pessoa.dart';
import 'shared/cargo.dart';

class Funcionario extends Pessoa {
  Cargo cargo;
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

  @override
  String pegarValor(String coluna) {
    switch (coluna) {
      case 'ID':
        return id.toString();
      case 'Nome':
        return nome;
      case 'Nascimento':
        return dataNascimento.toString();
      case 'Endereço':
        return endereco;
      case 'Bairro':
        return bairro;
      case 'Cidade':
        return cidade;
      case 'CEP':
        return cep;
      case 'Telefone':
        return telefone;
      case 'Cargo':
        return cargo.toString();
      case 'Turno':
        return turno?.join(', ') ?? '';
      default:
        return '';
    }
  }
}
