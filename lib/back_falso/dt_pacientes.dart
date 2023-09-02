List<Map<String, dynamic>> pacientes = [];

void geradorPacientes() {
  for (int i = 0; i < 31; i++) {
    pacientes.add(
      {
        'ID': i,
        'NOME': 'Paciente dos Santos Silva Júnior $i',
        'DATA NASC': '1998/05/25',
        'RUA': 'R. NASCIMENTO DE AGOSTO',
        'BAIRRO': 'CENTRO',
        'CIDADE': 'OLIVEIRA',
        'CEP': '14445000',
        'TELEFONE': '31 225444778',
        'CPF': '***3248****',
        'ALTURA': '1.80',
        'PESO': '80',
        'MEDICAMENTOS': 'Dipirona, Paracetamol',
      },
    );
  }
}
