// Import the ItemTabela interface
import 'consulta.dart';
import 'exame.dart';
import 'shared/forma_pagamento.dart';
import 'shared/status.dart';

class Pagamento {
  static int _idCounter = 0;
  final int id;

  Exame? exame;
  Consulta? consulta;
  StatusPagamento status;
  final FormaPagamento formaPagamento;
  final String codPagamento;
  final double? valor;

  Pagamento({
    this.exame,
    this.consulta,
    required this.status,
    required this.formaPagamento,
    required this.codPagamento,
    double? valor,
  })  : id = ++_idCounter,
        valor = valor ?? (exame != null ? exame.valor : consulta?.valor);
}
