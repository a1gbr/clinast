import '../../classes/procedimentos/procedimento.dart';

class Exame extends Procedimento {
  final String tipo;
  final String? solicitante;

  Exame({
    required String nomePaciente,
    required String nomeMedico,
    required this.tipo,
    this.solicitante,
    required DateTime data,
    required DateTime hora,
    required String valor,
    required String convenio,
    required String status,
  }) : super(
          nomePaciente: nomePaciente,
          nomeMedico: nomeMedico,
          data: data,
          hora: hora,
          valor: valor,
          convenio: convenio,
          status: status,
        );

  @override
  String toString() {
    return 'EXAME $id SELECIONADO';
  }
}
