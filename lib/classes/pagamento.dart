import 'consulta.dart';
import 'exame.dart';
import 'shared/estado.dart';

class Pagamento {
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
  }) {
    valor = exame != null
        ? exame!.valor
        : consulta != null
            ? consulta!.valor
            : null;
  }
}