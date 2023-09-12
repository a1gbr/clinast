import '../utils/item_tabela.dart';
import 'medico.dart';
import 'paciente.dart';
import 'shared/medicamento.dart';

class Prescricao implements ItemTabela {
  static int _idCounter = 0;
  final int id;

  final Medico medico;
  final Paciente paciente;
  final List<Medicamento> medicamentos;
  final DateTime dataAtendimento;
  final DateTime horaAtendimento;
  final DateTime dataValidade;

  Prescricao({
    required this.medico,
    required this.paciente,
    required this.medicamentos,
    required this.dataAtendimento,
    required this.horaAtendimento,
    required this.dataValidade,
  }) : id = ++_idCounter;

  @override
  String pegarValor(String coluna) {
    switch (coluna) {
      case 'ID':
        return id.toString();
      case 'Médico':
        return medico.nome;
      case 'Paciente':
        return paciente.nome;
      case 'Medicamentos':
        return medicamentos.map((med) => med.nome).join(', ');
      case 'Data Atendimento':
        return dataAtendimento.toString();
      case 'Hora Atendimento':
        return horaAtendimento.toString();
      case 'Data Validade':
        return dataValidade.toString();
      default:
        return '';
    }
  }
}
