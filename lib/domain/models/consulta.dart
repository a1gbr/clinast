import 'medico.dart';
import 'paciente.dart';
import 'procedimento.dart';
import 'shared/especialidade.dart';
import 'shared/estado.dart';

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
  String pegarValor(String coluna) {
    switch (coluna) {
      case 'ID':
        return id.toString();
      case 'Consulta':
        return medico.especialidade.toString();
      case 'Paciente':
        return paciente.nome;
      case 'Data':
        return dataAtendimento.toString();
      case 'Hora':
        return horaAtendimento.toString();
      case 'Status':
        return statusProcedimento.toString();
      case 'Convênio':
        return convenio ? 'Sim' : 'Não';
      case 'Tipo Convênio':
        return tipoConvenio ?? '';
      case 'Retorno':
        return retorno == true ? 'Sim' : 'Não';
      default:
        return '';
    }
  }
}
