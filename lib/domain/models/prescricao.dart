import 'package:intl/intl.dart';

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

  String get data => DateFormat('dd/MM/yyyy').format(dataAtendimento);
  String get hora => DateFormat('HH:mm').format(horaAtendimento);
  String get validade => DateFormat('dd/MM/yyyy').format(dataValidade);
}
