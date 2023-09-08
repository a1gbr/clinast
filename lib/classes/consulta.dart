import 'medico.dart';
import 'paciente.dart';
import 'procedimento.dart';
import 'shared/especialidade.dart';
import 'shared/estado.dart';

class Consulta extends Procedimento {
  late Especialidade tipoConsulta;
  late double valor;

  Consulta({
    required int id,
    required Medico medico,
    required Paciente paciente,
    required DateTime dataAtendimento,
    required DateTime horaAtendimento,
    required StatusProcedimento status,
    bool convenio = false,
    String? tipoConvenio,
    bool retorno = false,
  }) : super(
          id: id,
          medico: medico,
          paciente: paciente,
          dataAtendimento: dataAtendimento,
          horaAtendimento: horaAtendimento,
          status: status,
          convenio: convenio,
          tipoConvenio: tipoConvenio,
          retorno: retorno,
        ) {
    tipoConsulta = medico.especialidade;
    valor = tipoConsulta.valor;
  }
}
