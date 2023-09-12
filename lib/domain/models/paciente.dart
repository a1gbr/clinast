import 'pessoa.dart';
import 'shared/medicamento.dart';

class Paciente extends Pessoa {
  double? altura;
  double? peso;
  List<Medicamento>? medicamentos;

  Paciente({
    required String nome,
    required DateTime dataNascimento,
    required String endereco,
    required String bairro,
    required String cidade,
    required String cep,
    required String telefone,
    required String cpf,
    this.altura,
    this.peso,
    this.medicamentos,
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
      case 'Altura':
        return altura?.toString() ?? '';
      case 'Peso':
        return peso?.toString() ?? '';
      case 'Medicamentos':
        return medicamentos?.map((med) => med.nome).join(', ') ?? '';
      default:
        return '';
    }
  }
}
