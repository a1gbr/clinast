///
/// ESSA CLASSE FOI CONSTRUIDA PARA TESTE
/// NAO TENHO SE A IMPLEMENTACAO SERA ASSIM
/// QUANDO TIVERMOS UM BACKEND CORRETO
///

enum FormaPagamentoEnum {
  pix,
  credito,
  debito,
  dinheiro,
}

Map<FormaPagamentoEnum, String> formaPagamentoStrings = {
  FormaPagamentoEnum.pix: "Pix",
  FormaPagamentoEnum.credito: "Crédito",
  FormaPagamentoEnum.debito: "Débito",
  FormaPagamentoEnum.dinheiro: "Dinheiro",
};

class FormaPagamento {
  final FormaPagamentoEnum formaPagamento;

  FormaPagamento({
    required this.formaPagamento,
  });

  @override
  String toString() {
    final formaPagamentoString = formaPagamentoStrings[formaPagamento];
    return formaPagamentoString ?? 'Forma de Pagamento Inválida';
  }
}
