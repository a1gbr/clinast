import 'medico.dart';
import 'paciente.dart';
import 'procedimento.dart';
import 'shared/especialidade.dart';
import 'shared/status.dart';

class Consulta extends Procedimento {
  late final Especialidade tipoConsulta;
  late final double valor;

  Consulta({
    required Medico medico,
    required Paciente paciente,
    required DateTime dataAtendimento,
    required DateTime horaAtendimento,
    required StatusProcedimento statusProcedimento,
    bool convenio = false,
    String? tipoConvenio,
    bool retorno = false,
  }) : super(
          medico: medico,
          paciente: paciente,
          dataAtendimento: dataAtendimento,
          horaAtendimento: horaAtendimento,
          statusProcedimento: statusProcedimento,
          convenio: convenio,
          tipoConvenio: tipoConvenio,
          retorno: retorno,
        ) {
    tipoConsulta = medico.especialidade;
    valor = tipoConsulta.valor;
  }

  @override
  String toString() {
    return super.id.toString();
  }
}
