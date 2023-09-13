import 'medico.dart';
import 'paciente.dart';
import 'procedimento.dart';
import 'shared/status.dart';
import 'shared/tipo_exame.dart';

class Exame extends Procedimento {
  final TipoExame tipoExame;
  final double valor;
  final Medico? solicitante;

  Exame({
    required Medico medico,
    required Paciente paciente,
    required DateTime dataAtendimento,
    required DateTime horaAtendimento,
    required StatusProcedimento statusProcedimento,
    required this.solicitante,
    required this.tipoExame,
    bool haConvenio = false,
    String? tipoConvenio,
    bool? retorno,
  })  : valor = tipoExame.valor,
        super(
          medico: medico,
          paciente: paciente,
          dataAtendimento: dataAtendimento,
          horaAtendimento: horaAtendimento,
          statusProcedimento: statusProcedimento,
          haConvenio: haConvenio,
          tipoConvenio: tipoConvenio,
          retorno: retorno,
        );

  @override
  String toString() {
    return super.id.toString();
  }
}
