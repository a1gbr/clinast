class Pagamento {
  static int _idCounter = 0;

  final int id;
  final String procedimento;
  final String nomePaciente;
  final String nomeMedico;
  final String formaDePagamento;
  final String valor;
  final String confirmacaoPagamento;
  final String desconto;
  final String status;

  Pagamento({
    required this.procedimento,
    required this.nomePaciente,
    required this.nomeMedico,
    required this.formaDePagamento,
    required this.valor,
    required this.confirmacaoPagamento,
    required this.desconto,
    required this.status,
  }) : id = ++_idCounter;

  @override
  String toString() {
    return 'Pagamento(id: $id, procedimento: $procedimento, paciente: $nomePaciente, medico: $nomeMedico, forma de pagamento: $formaDePagamento, valor: $valor, codigo confirmacao de pagamento: $confirmacaoPagamento, desconto: $desconto, status: $status)';
  }
}
