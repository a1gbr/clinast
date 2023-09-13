import 'package:flutter/material.dart';

import '../widgets/tabela.dart';
import '../widgets/titulo_pagina.dart';

// CRIA A LISTA DE TITULOS DAS COLUNAS
final List<String> tituloColunas = [
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

void handleExportarClick() {}

void handleNovoItemClick() {}

class _ConsultasPageState extends State<ConsultasPage> {
  @override
  Widget build(BuildContext context) {
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
              child: TabelaDinamica(
                colunas: tituloColunas,
                itens: const [],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
