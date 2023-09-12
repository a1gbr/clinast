import 'package:flutter/material.dart';

import '../widgets/tabela.dart';
import '../widgets/titulo_pagina.dart';

// CRIA A LISTA DE TITULOS DAS COLUNAS
final List<String> tituloColunas = [
  'ID',
  'PROCEDIMENTO',
  'PACIENTE',
  'MÉDICO',
  'FORMA DE PAG.',
  'VALOR',
  'DESCONTO',
  'COD DE PAG.',
  'STATUS',
];

class PagamentosPage extends StatefulWidget {
  const PagamentosPage({
    required this.colunas,
    required this.itens,
    super.key,
  });

  final List<String> colunas;
  final List<Map<String, dynamic>> itens;

  @override
  State<PagamentosPage> createState() => _PagamentosPageState();
}

void handleExportarClick() {}

void handleNovoItemClick() {}

class _PagamentosPageState extends State<PagamentosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // TITULO DA PAGINA
          const TituloPagina(
            "PAGAMENTOS",
            "Lista de pagamentos:",
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
                naSelecao: (selecionados) {
                  //
                  print(selecionados);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
