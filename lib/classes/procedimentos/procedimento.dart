enum _GeradorProcedimento { instance }

class Procedimento {
  static int _idCounter = 0;

  final int id;
  final String nomePaciente;
  final String nomeMedico;
  final String data;
  final String hora;
  final String valor;
  final String convenio;
  final String desconto;
  final String status;

  Procedimento({
    required this.nomePaciente,
    required this.nomeMedico,
    required this.data,
    required this.hora,
    required this.valor,
    required this.convenio,
    required this.desconto,
    required this.status,
  }) : id = ++_idCounter;

  @override
  String toString() {
    return 'Procedimento(id: $id, paciente: $nomePaciente, medico: $nomeMedico, data: $data, hora: $hora, valor: $valor, convenio: $convenio, desconto: $desconto, status: $status)';
  }
}
