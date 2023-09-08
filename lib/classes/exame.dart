import 'medico.dart';
import 'paciente.dart';
import 'procedimento.dart';
import 'shared/estado.dart';
import 'shared/tipo_exame.dart';

class Exame extends Procedimento {
  final TipoExame tipoExame;
  final double valor;

  Exame({
    required Medico medico,
    required Paciente paciente,
    required DateTime dataAtendimento,
    required DateTime horaAtendimento,
    required StatusProcedimento statusProcedimento,
    required StatusPessoa statusPaciente,
    required this.tipoExame,
    bool convenio = false,
    String? tipoConvenio,
    bool retorno = false,
  })  : valor = tipoExame.valor,
        super(
          medico: medico,
          paciente: paciente,
          dataAtendimento: dataAtendimento,
          horaAtendimento: horaAtendimento,
          statusProcedimento: statusProcedimento,
          statusPaciente: statusPaciente,
          convenio: convenio,
          tipoConvenio: tipoConvenio,
          retorno: retorno,
        );
}
