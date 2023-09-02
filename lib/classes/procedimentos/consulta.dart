import '../../classes/procedimentos/procedimento.dart';

class Consulta extends Procedimento {
  final String tipo;

  Consulta({
    required String nomePaciente,
    required String nomeMedico,
    required DateTime data,
    required DateTime hora,
    required this.tipo,
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
    return 'CONSULTA $id SELECIONADA';
  }
}
