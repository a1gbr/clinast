class Cargo {
  static int _idCounter = 0;
  final int id;

  final String descricao;

  Cargo({
    required this.descricao,
  }) : id = ++_idCounter;
}
