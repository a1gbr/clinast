class Procedimento {
  static int _idCounter = 0;

  final int id;
  final String nomePaciente;
  final String nomeMedico;
  final DateTime data;
  final DateTime hora;
  final String valor;
  final String convenio;
  final String status;

  Procedimento({
    required this.nomePaciente,
    required this.nomeMedico,
    required this.data,
    required this.hora,
    required this.valor,
    required this.convenio,
    required this.status,
  }) : id = ++_idCounter;

  @override
  String toString() {
    return 'PROCEDIMENTO $id SELECIONADO';
  }
}
