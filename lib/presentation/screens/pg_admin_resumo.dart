import 'package:flutter/material.dart';

import '../widgets/titulo_pagina.dart';

class AdminResumoPage extends StatefulWidget {
  const AdminResumoPage({super.key});

  @override
  State<AdminResumoPage> createState() => _AdminResumoPageState();
}

void handleExportarClick() {}

void handleNovoItemClick() {}

class _AdminResumoPageState extends State<AdminResumoPage> {
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
            child: Text('ADMIN DASHBOARD'),
          ),
        ],
      ),
    );
  }
}
