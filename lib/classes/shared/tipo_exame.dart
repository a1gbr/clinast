class TipoExame {
  static int _idCounter = 0;
  final int id;

  final String descricao;
  final double valor;

  TipoExame({
    required this.descricao,
    required this.valor,
  }) : id = ++_idCounter;
}
