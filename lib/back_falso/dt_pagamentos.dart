List<Map<String, dynamic>> pagamentos = [];

void geradorPagamentos() {
  for (int i = 0; i < 31; i++) {
    pagamentos.add(
      {
        'ID': i,
        'PROCEDIMENTO': 'Consulta $i',
        'PACIENTE': 'Paciente da Silva $i',
        'MÉDICO': 'Médico Médico  $i',
        'FORMA DE PAGAMENTO': 'PIX',
        'VALOR': '200.00',
        'DESCONTO': '30%',
        'CODIGO DE PAGAMENTO': '123456789',
        'STATUS': 'Concluído',
      },
    );
  }
}
