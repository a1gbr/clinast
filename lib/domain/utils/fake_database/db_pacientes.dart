import 'dart:math';

import 'package:cpf_util/cpf_util.dart';
import 'package:faker/faker.dart';

import '../../models/paciente.dart';
import '../../models/shared/medicamento.dart';

final List<Paciente> pacientes = [];

void geradorPacientes() {
  final faker = Faker();
  final cpfUtil = CPFUtil();
  final Random random = Random();

  for (int i = 0; i < 31; i++) {
    final cpf = cpfUtil.generate();
    final int numberOfMedicamentos = random.nextInt(4) + 1;
    final List<Medicamento> medicamentos = [];

    for (int j = 0; j < numberOfMedicamentos; j++) {
      medicamentos.add(
        Medicamento(
          medicamento: MedicamentosEnum
              .values[random.nextInt(MedicamentosEnum.values.length)],
        ),
      );
    }

    final paciente = Paciente(
      nome: faker.person.name(),
      dataNascimento: faker.date.dateTime(minYear: 1980, maxYear: 2000),
      endereco: faker.address.streetName(),
      bairro: faker.address.cityPrefix(),
      cidade: faker.address.city(),
      cep: faker.address.zipCode(),
      telefone: faker.phoneNumber.us(),
      cpf: cpf,
      altura: 1.80,
      peso: 80,
      medicamentos: medicamentos,
    );
    pacientes.add(paciente);
  }
}
