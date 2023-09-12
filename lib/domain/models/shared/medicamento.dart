class Medicamento {
  static int _idCounter = 0;
  final int id;

  final String nome;

  Medicamento({
    required this.nome,
  }) : id = ++_idCounter;
}
