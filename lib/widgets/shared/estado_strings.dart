import '../../classes/shared/estado.dart';

Map<StatusProcedimento, String> statusProcedimentoStrings = {
  StatusProcedimento.agendado: "Agendado",
  StatusProcedimento.confirmado: "Confirmado",
  StatusProcedimento.concluido: "Concluído",
  StatusProcedimento.retorno: "Retorno",
  StatusProcedimento.emAndamento: "Em Andamento",
  StatusProcedimento.cancelado: "Cancelado",
  StatusProcedimento.pago: "Pago",
  StatusProcedimento.encerrado: "Encerrado",
};

Map<StatusPessoa, String> statusPacienteStrings = {
  StatusPessoa.faltou: "Faltou",
  StatusPessoa.presente: "Presente",
  StatusPessoa.aguardando: "Aguardando",
  StatusPessoa.atendido: "Atendido",
};

Map<StatusPagamento, String> statusPagamentoStrings = {
  StatusPagamento.pendente: "Pendente",
  StatusPagamento.pago: "Pago",
  StatusPagamento.cancelado: "Cancelado",
  StatusPagamento.atrasado: "Atrasado",
};
