import 'package:clinast/widgets/tabela.dart';
import 'package:clinast/widgets/titulo_pagina.dart';
import 'package:flutter/material.dart';

class FuncionariosPage extends StatelessWidget {
  const FuncionariosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const Column(
        children: <Widget>[
          TituloPagina("FUNCIONÁRIOS", "Lista de funcionários:"),
          SizedBox(height: 16),
          Expanded(
            child: Column(
              children: [
                Tabela(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
