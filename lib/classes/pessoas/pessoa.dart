enum _GeradorPessoa { instance }

class Pessoa {
  static int _idCounter = 0;

  final int id;
  final String nome;
  final String dataNascimento;
  final String rua;
  final String bairro;
  final String cidade;
  final String cep;
  final String telefone;
  final String cpf;

  Pessoa({
    required this.nome,
    required this.dataNascimento,
    required this.rua,
    required this.bairro,
    required this.cidade,
    required this.cep,
    required this.telefone,
    required this.cpf,
  }) : id = ++_idCounter;

  @override
  String toString() {
    return 'Pessoa(id: $id, nome: $nome, dataNascimento: $dataNascimento, rua: $rua, bairro: $bairro, cidade: $cidade, cep: $cep, telefone: $telefone, cpf: $cpf)';
  }
}
