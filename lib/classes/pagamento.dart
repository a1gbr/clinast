import 'consulta.dart';
import 'exame.dart';
import 'shared/estado.dart';

class Pagamento {
  static int _idCounter = 0;
  final int id;

  Exame? exame;
  Consulta? consulta;
  StatusPagamento status;
  final String formaPagamento;
  final String codPagamento;
  late final double? valor;

  Pagamento({
    this.exame,
    this.consulta,
    required this.status,
    required this.formaPagamento,
    required this.codPagamento,
  })  : id = ++_idCounter,
        valor = exame != null ? exame.valor : consulta?.valor;
}
