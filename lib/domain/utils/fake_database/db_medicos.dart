import 'dart:math';

// ignore: depend_on_referenced_packages
import 'package:cpf_util/cpf_util.dart';
// ignore: depend_on_referenced_packages
import 'package:faker/faker.dart';

import '../../models/medico.dart';
import '../../models/shared/cargo.dart';
import '../../models/shared/especialidade.dart';
import '../../models/shared/turno.dart';

final List<Medico> medicos = [];

void geradorMedicos() {
  final faker = Faker();
  final cpfUtil = CPFUtil();
  final Random random = Random();

  for (int i = 0; i < 31; i++) {
    final cpf = cpfUtil.generate();

    final medico = Medico(
      nome: faker.person.name(),
      dataNascimento: faker.date.dateTime(minYear: 1980, maxYear: 2000),
      endereco: faker.address.streetName(),
      bairro: faker.address.cityPrefix(),
      cidade: faker.address.city(),
      cep: faker.address.zipCode(),
      telefone: faker.phoneNumber.us(),
      cpf: cpf,
      cargo: Cargo(
        cargo: CargoEnum.medico,
      ),
      turno: [
        Turno(
          turno: TurnoEnum.values[random.nextInt(TurnoEnum.values.length)],
        )
      ],
      especialidade: Especialidade(
        especialidade: EspecialidadeEnum
            .values[random.nextInt(EspecialidadeEnum.values.length)],
      ),
      crm: 'CRM/SP 123456',
    );
    medicos.add(medico);
  }
}
