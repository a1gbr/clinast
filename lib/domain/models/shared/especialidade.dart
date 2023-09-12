///
/// ESSA CLASSE FOI CONSTRUIDA PARA TESTE
/// NAO TENHO SE A IMPLEMENTACAO SERA ASSIM
/// QUANDO TIVERMOS UM BACKEND CORRETO
///

enum EspecialidadeEnum {
  cardiologista,
  clinicoGeral,
  pneumologista,
  ortopedista,
  psicologo,
  nutricionista,
  fonoaudiologo,
  fisioterapeuta,
}

Map<EspecialidadeEnum, double> especialidadeValor = {
  EspecialidadeEnum.cardiologista: 400.0,
  EspecialidadeEnum.clinicoGeral: 150.0,
  EspecialidadeEnum.pneumologista: 200.0,
  EspecialidadeEnum.ortopedista: 300.0,
  EspecialidadeEnum.psicologo: 100.0,
  EspecialidadeEnum.nutricionista: 80.0,
  EspecialidadeEnum.fonoaudiologo: 200.0,
  EspecialidadeEnum.fisioterapeuta: 160.0,
};

Map<EspecialidadeEnum, String> especialidadeStrings = {
  EspecialidadeEnum.cardiologista: 'Cardiologista',
  EspecialidadeEnum.clinicoGeral: 'Clínico Geral',
  EspecialidadeEnum.pneumologista: 'Pneumologista',
  EspecialidadeEnum.ortopedista: 'Ortopedista',
  EspecialidadeEnum.psicologo: 'Psicólogo',
  EspecialidadeEnum.nutricionista: 'Nutricionista',
  EspecialidadeEnum.fonoaudiologo: 'Fonoaudiólogo',
  EspecialidadeEnum.fisioterapeuta: 'Fisioterapeuta',
};

class Especialidade {
  final EspecialidadeEnum especialidade;
  final double valor;

  Especialidade({
    required this.especialidade,
  }) : valor = especialidadeValor[especialidade]!;

  @override
  String toString() {
    final especialidadeString = especialidadeStrings[especialidade];
    return especialidadeString ?? 'Especialidade Inválida';
  }
}
