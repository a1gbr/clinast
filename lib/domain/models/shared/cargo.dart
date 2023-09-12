///
/// ESSA CLASSE FOI CONSTRUIDA PARA TESTE
/// NAO TENHO SE A IMPLEMENTACAO SERA ASSIM
/// QUANDO TIVERMOS UM BACKEND CORRETO
///

enum CargoEnum {
  medico,
  enfermeiro,
  recepcionista,
  porteiro,
  tecnicoEnfermagem,
  assistenteSocial,
  auxiliarLimpeza,
  auxiliarAdministrativo,
  auxiliarManutencao,
}

Map<CargoEnum, String> cargoStrings = {
  CargoEnum.medico: 'Médico',
  CargoEnum.enfermeiro: 'Enfermeiro',
  CargoEnum.recepcionista: 'Recepcionista',
  CargoEnum.porteiro: 'Porteiro',
  CargoEnum.tecnicoEnfermagem: 'Técnico de Enfermagem',
  CargoEnum.assistenteSocial: 'Assistente Social',
  CargoEnum.auxiliarLimpeza: 'Auxiliar de Limpeza',
  CargoEnum.auxiliarAdministrativo: 'Auxiliar Administrativo',
  CargoEnum.auxiliarManutencao: 'Auxiliar de Manutenção',
};

class Cargo {
  final CargoEnum cargo;

  Cargo({
    required this.cargo,
  });

  @override
  String toString() {
    final cargoString = cargoStrings[cargo];
    return cargoString ?? 'Cargo Inválido';
  }
}
