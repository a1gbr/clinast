List<Map<String, dynamic>> medicos = [];

void geradorMedicos() {
  for (int i = 0; i < 31; i++) {
    medicos.add(
      {
        'ID': i,
        'NOME': 'Doutor dos Santos Silva Júnior $i',
        'DATA NASC': '1998/05/25',
        'RUA': 'R. NASCIMENTO DE AGOSTO',
        'BAIRRO': 'CENTRO',
        'CIDADE': 'OLIVEIRA',
        'CEP': '14445000',
        'TELEFONE': '31 225444778',
        'CPF': '***3248****',
        'TURNO': 'Manhã',
        'FUNÇÃO': 'Médico',
        'CRM': '***324824**',
        'ESPECIALIDADE': 'Cardiologista',
      },
    );
  }
}
