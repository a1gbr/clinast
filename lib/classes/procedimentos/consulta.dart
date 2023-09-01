import 'package:clinast/classes/procedimentos/procedimento.dart';

enum _GeradorConsulta { instance }

class Consulta extends Procedimento {
  final String tipo;
  final String? solicitante;

  Consulta({
    required String nomePaciente,
    required String nomeMedico,
    required String data,
    required String hora,
    required String valor,
    required String convenio,
    required String desconto,
    required String status,
    required this.tipo,
    this.solicitante,
  }) : super(
          nomePaciente: nomePaciente,
          nomeMedico: nomeMedico,
          data: data,
          hora: hora,
          valor: valor,
          convenio: convenio,
          desconto: desconto,
          status: status,
        );

  @override
  String toString() {
    return 'Exame(id: $id, paciente: $nomePaciente, medico: $nomeMedico, data: $data, hora: $hora, valor: $valor, convenio: $convenio, desconto: $desconto, status: $status, tipo: $tipo, solicitante: $solicitante)';
  }
}
