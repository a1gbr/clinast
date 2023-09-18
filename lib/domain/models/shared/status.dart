///
/// ESSA CLASSE FOI CONSTRUIDA PARA TESTE
/// NAO TENHO SE A IMPLEMENTACAO SERA ASSIM
/// QUANDO TIVERMOS UM BACKEND CORRETO
///

enum StatusProcedimentoEnum {
  agendado,
  confirmado,
  concluido,
  retorno,
  emAndamento,
  cancelado,
  pago,
  encerrado,
}

Map<StatusProcedimentoEnum, String> statusProcedimentoStrings = {
  StatusProcedimentoEnum.agendado: "Agendado",
  StatusProcedimentoEnum.confirmado: "Confirmado",
  StatusProcedimentoEnum.concluido: "Concluído",
  StatusProcedimentoEnum.retorno: "Retorno",
  StatusProcedimentoEnum.emAndamento: "Em Andamento",
  StatusProcedimentoEnum.cancelado: "Cancelado",
  StatusProcedimentoEnum.pago: "Pago",
  StatusProcedimentoEnum.encerrado: "Encerrado",
};

class StatusProcedimento {
  final StatusProcedimentoEnum statusProcedimento;

  StatusProcedimento({
    required this.statusProcedimento,
  });

  @override
  String toString() {
    final statusString = statusProcedimentoStrings[statusProcedimento];
    return statusString ?? 'Status Inválido';
  }
}

enum StatusPagamentoEnum {
  pendente,
  pago,
  cancelado,
  atrasado,
}

Map<StatusPagamentoEnum, String> statusPagamentoStrings = {
  StatusPagamentoEnum.pendente: "Pendente",
  StatusPagamentoEnum.pago: "Pago",
  StatusPagamentoEnum.cancelado: "Cancelado",
  StatusPagamentoEnum.atrasado: "Atrasado",
};

class StatusPagamento {
  final StatusPagamentoEnum statusPagamento;

  StatusPagamento({
    required this.statusPagamento,
  });

  @override
  String toString() {
    final statusString = statusPagamentoStrings[statusPagamento];
    return statusString ?? 'Status Inválido';
  }
}
