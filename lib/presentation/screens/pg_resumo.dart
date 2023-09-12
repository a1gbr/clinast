import 'package:flutter/material.dart';

import '../widgets/titulo_pagina.dart';

class ResumoPage extends StatefulWidget {
  const ResumoPage({super.key});

  @override
  State<ResumoPage> createState() => _ResumoPageState();
}

void handleExportarClick() {}

void handleNovoItemClick() {}

class _ResumoPageState extends State<ResumoPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: <Widget>[
          // TITULO DA PAGINA
          TituloPagina(
            "RESUMO",
            "Painel de Controle.",
            onExportar: handleExportarClick,
            onNovoItem: handleNovoItemClick,
          ),

          // ESPACAMENTO DO TITULO PRO CORPO
          SizedBox(height: 16),

          // CORPO DA PAGINA
          Expanded(
            child: Text('CORPO'),
          ),
        ],
      ),
    );
  }
}
