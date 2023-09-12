import 'dart:math';

import 'package:cpf_util/cpf_util.dart';
import 'package:faker/faker.dart';

import '../../models/paciente.dart';
import 'db_medicamentos.dart';

final List<Paciente> pacientes = [];

void geradorPacientes() {
  final faker = Faker();
  final cpfUtil = CPFUtil();

  for (int i = 0; i < 31; i++) {
    final cpf = cpfUtil.generate();
    final paciente = Paciente(
      nome: faker.person.name(),
      dataNascimento: faker.date.dateTime(minYear: 1980, maxYear: 2000),
      endereco:
          '${faker.address.streetName()}, ${faker.address.buildingNumber()}',
      bairro: faker.address.cityPrefix(),
      cidade: faker.address.city(),
      cep: faker.address.zipCode(),
      telefone: faker.phoneNumber.us(),
      cpf: cpf,
      altura: 1.80,
      peso: 80,
      medicamentos: [
        medicamentos[Random().nextInt(9) + 1],
      ],
    );
    pacientes.add(paciente);
  }
}
