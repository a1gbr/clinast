import 'package:intl/intl.dart';

List<Map<String, dynamic>> consultas = [];

void geradorConsultas() {
  for (int i = 0; i < 31; i++) {
    consultas.add(
      {
        'ID': i,
        'PACIENTE': 'Paciente dos Santos Silva $i',
        'MÉDICO': 'Médico Médico  $i',
        'TIPO': 'Clin. Geral',
        'DATA': DateFormat('dd/MM').format(DateTime(2023, 07, 04, 16, 30)),
        'HORA': DateFormat('HH:mm').format(DateTime(2023, 07, 04, 16, 30)),
        'VALOR': '100.00',
        'CONVÊNIO': 'Convênio $i',
        'STATUS': 'Concluído',
      },
    );
  }
}
