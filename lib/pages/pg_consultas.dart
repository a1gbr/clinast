import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../back_falso/dt_consultas.dart';
import '../widgets/tabela.dart';
import '../widgets/titulo_pagina.dart';

// CRIA A LISTA DE TITULOS DAS COLUNAS
final List<String> tituloColunas = [
  'ID',
  'PACIENTE',
  'MÉDICO',
  'TIPO',
  'DATA',
  'HORA',
  'VALOR',
  'CONVÊNIO',
  'STATUS',
];

class ConsultasPage extends StatefulWidget {
  const ConsultasPage({
    required this.colunas,
    required this.itens,
    super.key,
  });

  final List<String> colunas;
  final List<Map<String, dynamic>> itens;
  @override
  State<ConsultasPage> createState() => _ConsultasPageState();
}

void handleExportarClick() {
  // Handle Exportar button click here
}

void handleNovoItemClick() {
  consultas.add(
    {
      'ID': "x",
      'PACIENTE': 'Paciente dos Santos Silva',
      'MÉDICO': 'Médico Médico',
      'TIPO': 'Clin. Geral',
      'DATA': DateFormat('dd/MM').format(DateTime(2023, 07, 04, 16, 30)),
      'HORA': DateFormat('HH:mm').format(DateTime(2023, 07, 04, 16, 30)),
      'VALOR': '100.00',
      'CONVÊNIO': 'Convênio',
      'STATUS': 'Concluído',
    },
  );
}

class _ConsultasPageState extends State<ConsultasPage> {
  @override
  Widget build(BuildContext context) {
    // GERANDO BACK FALSO
    consultas.isEmpty ? geradorConsultas() : null;

    return Scaffold(
      body: Column(
        children: <Widget>[
          // TITULO DA PAGINA
          const TituloPagina(
            "CONSULTAS",
            "Lista de consultas:",
            onExportar: handleExportarClick,
            onNovoItem: handleNovoItemClick,
          ),

          // ESPACAMENTO DO TITULO PRO CORPO
          const SizedBox(height: 16),

          // CORPO DA PAGINA
          Expanded(
            child: Center(
              // CHAMANDO O WIDGET TABELA
              child: DynamicDataTable(
                colunas: tituloColunas,
                itens: consultas,
                naSelecao: (selecionados) {
                  // LOG PRO DEBUG
                  print(selecionados);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
