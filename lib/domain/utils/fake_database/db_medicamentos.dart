import 'package:clinast/domain/models/shared/medicamento.dart';

List<String> nomeMedicamentos = [
  'Dipirona',
  'Paracetamol',
  'Aspirina',
  'Ibuprofeno',
  'Amoxicilina',
  'Omeprazol',
  'Ranitidina',
  'Atenolol',
  'Metformina'
];

List<Medicamento> medicamentos = [];

void geradorMedicamentos() {
  for (int i = 0; i < nomeMedicamentos.length; i++) {
    final medicamento = Medicamento(
      nome: nomeMedicamentos[i],
    );
    nomeMedicamentos[i] = medicamento.nome;
  }
}
