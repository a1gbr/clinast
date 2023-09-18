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
  String toString() {
    return nome;
  }
}
