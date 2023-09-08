import 'medico.dart';
import 'paciente.dart';
import 'procedimento.dart';
import 'shared/estado.dart';
import 'shared/tipo_exame.dart';

class Exame extends Procedimento {
  final TipoExame tipoExame;
  final double valor;

  Exame({
    required int id,
    required Medico medico,
    required Paciente paciente,
    required DateTime dataAtendimento,
    required DateTime horaAtendimento,
    required StatusProcedimento status,
    required this.tipoExame,
    bool convenio = false,
    String? tipoConvenio,
    bool retorno = false,
  })  : valor = tipoExame.valor,
        super(
          id: id,
          medico: medico,
          paciente: paciente,
          dataAtendimento: dataAtendimento,
          horaAtendimento: horaAtendimento,
          status: status,
          convenio: convenio,
          tipoConvenio: tipoConvenio,
          retorno: retorno,
        );
}
