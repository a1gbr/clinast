import 'package:clinast/classes/pessoas/pessoa.dart';

enum _GeradorPaciente { instance }

class Paciente extends Pessoa {
  final String altura;
  final String peso;
  final List<String> medicamentos;

  Paciente(
      {required String nome,
      required String dataNascimento,
      required String rua,
      required String bairro,
      required String cidade,
      required String cep,
      required String telefone,
      required String cpf,
      required this.altura,
      required this.peso,
      required this.medicamentos})
      : super(
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
    return 'Paciente(id: $id, nome: $nome, dataNascimento: $dataNascimento, rua: $rua, bairro: $bairro, cidade: $cidade, cep: $cep, telefone: $telefone, cpf: $cpf, altura: $altura, função: $peso, medicamentos: $medicamentos)';
  }
}
