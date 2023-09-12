import 'medico.dart';
import 'paciente.dart';
import 'shared/medicamento.dart';

class Prescricao {
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
}
