import 'package:intl/intl.dart';

import 'medico.dart';
import 'paciente.dart';
import 'shared/status.dart';

class Procedimento {
  static int _idCounter = 0;
  final int id;

  final Medico medico;
  final Paciente paciente;
  final DateTime dataAtendimento;
  final DateTime horaAtendimento;
  StatusProcedimento statusProcedimento;
  bool haConvenio;
  String? tipoConvenio;
  bool? retorno;

  Procedimento({
    required this.medico,
    required this.paciente,
    required this.dataAtendimento,
    required this.horaAtendimento,
    required this.statusProcedimento,
    this.haConvenio = false,
    this.tipoConvenio,
    this.retorno = false,
  }) : id = ++_idCounter;

  String get data => DateFormat('dd/MM/yyyy').format(dataAtendimento);
  String get hora => DateFormat('HH:mm').format(horaAtendimento);
  String get convenio => haConvenio ? tipoConvenio! : 'Não';
}
