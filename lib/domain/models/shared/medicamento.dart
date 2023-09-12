///
/// ESSA CLASSE FOI CONSTRUIDA PARA TESTE
/// NAO TENHO SE A IMPLEMENTACAO SERA ASSIM
/// QUANDO TIVERMOS UM BACKEND CORRETO
///

enum MedicamentosEnum {
  paracetamol,
  dipirona,
  ibuprofeno,
  aspirina,
  dorflex,
  doril,
  novalgina,
  buscopan,
  neosaldina,
  tylenol,
  dorilax,
  dorflexic,
  dorfebril,
  dorilivio,
  dorilaxx,
  dorflexina,
}

Map<MedicamentosEnum, String> medicamentoStrings = {
  MedicamentosEnum.paracetamol: "Paracetamol",
  MedicamentosEnum.dipirona: "Dipirona",
  MedicamentosEnum.ibuprofeno: "Ibuprofeno",
  MedicamentosEnum.aspirina: "Aspirina",
  MedicamentosEnum.dorflex: "Dorflex",
  MedicamentosEnum.doril: "Doril",
  MedicamentosEnum.novalgina: "Novalgina",
  MedicamentosEnum.buscopan: "Buscopan",
  MedicamentosEnum.neosaldina: "Neosaldina",
  MedicamentosEnum.tylenol: "Tylenol",
  MedicamentosEnum.dorilax: "Dorilax",
  MedicamentosEnum.dorflexic: "Dorflexic",
  MedicamentosEnum.dorfebril: "Dorfebril",
  MedicamentosEnum.dorilivio: "Dorilivio",
  MedicamentosEnum.dorilaxx: "Dorilaxx",
  MedicamentosEnum.dorflexina: "Dorflexina",
};

class Medicamento {
  final MedicamentosEnum medicamento;

  Medicamento({
    required this.medicamento,
  });

  @override
  String toString() {
    final medicamentoString = medicamentoStrings[medicamento];
    return medicamentoString ?? 'Medicamento Inválido';
  }
}
