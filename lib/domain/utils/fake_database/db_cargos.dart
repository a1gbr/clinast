import 'package:clinast/domain/models/shared/cargo.dart';

List<String> nomeCargo = [
  'Médico',
  'Enfermeiro',
  'Recepcionista',
  'Porteiro',
  'Técnico de Enfermagem',
  'Assistente Social',
  'Auxiliar de Limpeza',
  'Auxiliar Administrativo',
  'Auxiliar de Manutenção',
];

List<Cargo> cargos = [];

void geradorCargos() {
  for (int i = 0; i < nomeCargo.length; i++) {
    final cargo = Cargo(
      descricao: nomeCargo[i],
    );
    nomeCargo[i] = cargo.descricao;
  }
}
