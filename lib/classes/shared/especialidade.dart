class Especialidade {
  static int _idCounter = 0;
  final int id;

  final String descricao;
  final double valor;

  Especialidade({
    required this.descricao,
    required this.valor,
  }) : id = ++_idCounter;
}
