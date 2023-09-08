import 'medico.dart';
import 'paciente.dart';
import 'shared/estado.dart';

class Procedimento {
  final int id;
  final Medico medico;
  final Paciente paciente;
  final DateTime dataAtendimento;
  final DateTime horaAtendimento;
  final StatusProcedimento statusProcedimento;
  final StatusPessoa statusPaciente;
  final bool convenio;
  final String? tipoConvenio;
  final bool retorno;

  Procedimento({
    required this.id,
    required this.medico,
    required this.paciente,
    required this.dataAtendimento,
    required this.horaAtendimento,
    required this.statusProcedimento,
    this.statusPaciente = StatusPessoa.aguardando,
    this.convenio = false,
    this.tipoConvenio,
    this.retorno = false,
  });
}
