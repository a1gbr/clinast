List<Map<String, dynamic>> funcionarios = [];

void geradorFuncionarios() {
  for (int i = 0; i < 31; i++) {
    funcionarios.add(
      {
        'ID': i,
        'NOME': 'Funcionario dos Santos Silva Júnior $i',
        'DATA NASC': '1998/05/25',
        'RUA': 'R. NASCIMENTO DE AGOSTO',
        'BAIRRO': 'CENTRO',
        'CIDADE': 'OLIVEIRA',
        'CEP': '14445000',
        'TELEFONE': '31 225444778',
        'CPF': '***3248****',
        'TURNO': 'Manhã',
        'FUNÇÃO': 'Recepcionista',
      },
    );
  }
}
