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
    required this.tipoExame,
    bool convenio = false,
    String? tipoConvenio,
    bool? retorno,
  })  : valor = tipoExame.valor,
        super(
          medico: medico,
          paciente: paciente,
          dataAtendimento: dataAtendimento,
          horaAtendimento: horaAtendimento,
          statusProcedimento: statusProcedimento,
          convenio: convenio,
          tipoConvenio: tipoConvenio,
          retorno: retorno,
        );

  @override
  String pegarValor(String coluna) {
    switch (coluna) {
      case 'ID':
        return id.toString();
      case 'Exame':
        return tipoExame.toString();
      case 'Paciente':
        return paciente.nome;
      case 'Data':
        return dataAtendimento.toString();
      case 'Hora':
        return horaAtendimento.toString();
      case 'Status':
        return statusProcedimento.toString();
      case 'Valor':
        return valor.toString();
      case 'Tipo':
        return tipoExame.toString();
      case 'Convênio':
        return convenio ? 'Sim' : 'Não';
      case 'Tipo Convênio':
        return tipoConvenio ?? '';
      default:
        return '';
    }
  }
}
