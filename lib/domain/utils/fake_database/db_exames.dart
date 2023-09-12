import 'dart:math';

import '../../../domain/models/shared/tipo_exame.dart';
import '../../models/exame.dart';
import '../../models/shared/status.dart';
import 'db_medicos.dart';
import 'db_pacientes.dart';

final List<Exame> exames = [];

void geradorExames() {
  for (int i = 0; i < 31; i++) {
    final exame = Exame(
      medico: medicos[i],
      paciente: pacientes[i],
      dataAtendimento: DateTime.now(),
      horaAtendimento: DateTime.now(),
      statusProcedimento: StatusProcedimento(
        statusProcedimento: StatusProcedimentoEnum.agendado,
      ),
      solicitante: medicos[Random().nextInt(medicos.length)],
      tipoExame: TipoExame(
        tipoExame: TipoExameEnum.values[i % TipoExameEnum.values.length],
      ),
    );
    exames.add(exame);
  }
}
