///
/// ESSA CLASSE FOI CONSTRUIDA PARA TESTE
/// NAO TENHO SE A IMPLEMENTACAO SERA ASSIM
/// QUANDO TIVERMOS UM BACKEND CORRETO
///

enum TipoExameEnum {
  tomografia,
  raiox,
  polissonografia,
  ultrassonografia,
  mapa24,
  espirometria,
  holter24,
  mapeamentoCerebral,
  eletrocardiograma,
  eletroencefalograma,
  ecodopplercardiograma,
  testeErgronomia,
  duplexScanVascular,
}

Map<TipoExameEnum, double> tipoExameValor = {
  TipoExameEnum.tomografia: 400.0,
  TipoExameEnum.raiox: 200.0,
  TipoExameEnum.polissonografia: 500.0,
  TipoExameEnum.ultrassonografia: 300.0,
  TipoExameEnum.mapa24: 300.0,
  TipoExameEnum.espirometria: 200.0,
  TipoExameEnum.holter24: 300.0,
  TipoExameEnum.mapeamentoCerebral: 400.0,
  TipoExameEnum.eletrocardiograma: 200.0,
  TipoExameEnum.eletroencefalograma: 400.0,
  TipoExameEnum.ecodopplercardiograma: 300.0,
  TipoExameEnum.testeErgronomia: 300.0,
  TipoExameEnum.duplexScanVascular: 400.0,
};

Map<TipoExameEnum, String> tipoExameStrings = {
  TipoExameEnum.tomografia: 'Tomografia',
  TipoExameEnum.raiox: 'Raio-X',
  TipoExameEnum.polissonografia: 'Polissonografia',
  TipoExameEnum.ultrassonografia: 'Ultrassonografia',
  TipoExameEnum.mapa24: 'MAPA 24h',
  TipoExameEnum.espirometria: 'Espirometria',
  TipoExameEnum.holter24: 'Holter 24h',
  TipoExameEnum.mapeamentoCerebral: 'Mapeamento Cerebral',
  TipoExameEnum.eletrocardiograma: 'Eletrocardiograma',
  TipoExameEnum.eletroencefalograma: 'Eletroencefalograma',
  TipoExameEnum.ecodopplercardiograma: 'Ecodopplercardiograma',
  TipoExameEnum.testeErgronomia: 'Teste de Ergonomia',
  TipoExameEnum.duplexScanVascular: 'Duplex Scan Vascular',
};

class TipoExame {
  final TipoExameEnum tipoExame;
  late final double valor;

  TipoExame({
    required this.tipoExame,
  }) : valor = tipoExameValor[tipoExame]!;

  @override
  String toString() {
    final tipoExameString = tipoExameStrings[tipoExame];
    return tipoExameString ?? 'Tipo de Exame Inválido';
  }
}
