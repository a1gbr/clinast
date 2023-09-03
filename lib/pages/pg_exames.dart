import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../back_falso/dt_exames.dart';
import '../widgets/tabela.dart';
import '../widgets/titulo_pagina.dart';

// CRIA A LISTA DE TITULOS DAS COLUNAS
final List<String> tituloColunas = [
  'ID',
  'PACIENTE',
  'MÉDICO',
  'TIPO',
  'SOLICITANTE',
  'DATA',
  'HORA',
  'VALOR',
  'CONVÊNIO',
  'STATUS',
];

class ExamesPage extends StatefulWidget {
  const ExamesPage({
    required this.colunas,
    required this.itens,
    super.key,
  });
  final List<String> colunas;
  final List<Map<String, dynamic>> itens;
  @override
  State<ExamesPage> createState() => _ExamesPageState();
}

void handleExportarClick() {
  // Handle Exportar button click here
}

void handleNovoItemClick() {
  exames.add(
    {
      'ID': "x",
      'PACIENTE': 'Paciente dos Santos',
      'MÉDICO': 'Médico Médico ',
      'TIPO': 'Ultrassonografia',
      'SOLICITANTE': 'Solicitante',
      'DATA': DateFormat('dd/MM').format(DateTime(2023, 07, 04, 16, 30)),
      'HORA': DateFormat('HH:mm').format(DateTime(2023, 07, 04, 16, 30)),
      'VALOR': '100.00',
      'CONVÊNIO': 'Convênio',
      'STATUS': 'Concluído',
    },
  );
}

class _ExamesPageState extends State<ExamesPage> {
  @override
  Widget build(BuildContext context) {
    // GERANDO BACK FALSO
    exames.isEmpty ? geradorExames() : null;

    return Scaffold(
      body: Column(
        children: <Widget>[
          // TITULO DA PAGINA
          const TituloPagina(
            "EXAMES",
            "Lista de exames:",
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
                  itens: exames,
                  naSelecao: (selecionados) {
                    // LOG PRO DEBUG
                    print(selecionados);
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
