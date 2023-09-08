import 'medico.dart';
import 'paciente.dart';
import 'shared/estado.dart';
import 'shared/medicamento.dart';

class Prescricao {
  final int id;
  final Medico medico;
  final Paciente paciente;
  final List<Medicamento> medicamentos;
  final DateTime dataAtendimento;
  final DateTime horaAtendimento;
  final DateTime dataValidade;
  final StatusProcedimento status;

  Prescricao({
    required this.id,
    required this.medico,
    required this.paciente,
    required this.medicamentos,
    required this.dataAtendimento,
    required this.horaAtendimento,
    required this.dataValidade,
    required this.status,
  });
}
