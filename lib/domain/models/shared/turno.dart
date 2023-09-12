///
/// ESSA CLASSE FOI CONSTRUIDA PARA TESTE
/// NAO TENHO SE A IMPLEMENTACAO SERA ASSIM
/// QUANDO TIVERMOS UM BACKEND CORRETO
///

enum TurnoEnum {
  manha,
  tarde,
  noite,
  madrugada,
}

Map<TurnoEnum, String> turnoStrings = {
  TurnoEnum.manha: "Manhã",
  TurnoEnum.tarde: "Tarde",
  TurnoEnum.noite: "Noite",
  TurnoEnum.madrugada: "Madrugada",
};

class Turno {
  final TurnoEnum turno;

  Turno({
    required this.turno,
  });

  @override
  String toString() {
    final turnoString = turnoStrings[turno];
    return turnoString ?? 'Turno Inválido';
  }
}
