import 'package:clinast/widgets/titulo_pagina.dart';
import 'package:flutter/material.dart';

class ResumoPage extends StatelessWidget {
  const ResumoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const Column(
        children: <Widget>[
          TituloPagina("RESUMO", "Painel de Controle."),
          Expanded(
            child: Center(child: Text("DASHBOARD")),
          )
        ],
      ),
    );
  }
}
