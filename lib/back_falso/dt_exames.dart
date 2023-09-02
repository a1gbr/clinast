import 'package:intl/intl.dart';

List<Map<String, dynamic>> exames = [];

void geradorExames() {
  for (int i = 0; i < 31; i++) {
    exames.add(
      {
        'ID': i,
        'PACIENTE': 'Paciente dos Santos $i',
        'MÉDICO': 'Médico Médico  $i',
        'TIPO': 'Ultrassonografia',
        'SOLICITANTE': 'Solicitante $i',
        'DATA': DateFormat('dd/MM').format(DateTime(2023, 07, 04, 16, 30)),
        'HORA': DateFormat('HH:mm').format(DateTime(2023, 07, 04, 16, 30)),
        'VALOR': '100.00',
        'CONVÊNIO': 'Convênio $i',
        'STATUS': 'Concluído',
      },
    );
  }
}
