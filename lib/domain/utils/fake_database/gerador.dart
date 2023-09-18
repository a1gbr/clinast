import 'db_exames.dart';
import 'db_medicos.dart';
import 'db_pacientes.dart';

Future<void> gerador() async {
  pacientes.isEmpty ? geradorPacientes() : null;
  medicos.isEmpty ? geradorMedicos() : null;
  exames.isEmpty ? geradorExames() : null;
}
