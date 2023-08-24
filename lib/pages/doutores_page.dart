import 'package:clinast/widgets/tabela.dart';
import 'package:clinast/widgets/titulo_pagina.dart';
import 'package:flutter/material.dart';

class DoutoresPage extends StatelessWidget {
  const DoutoresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const Column(
        children: <Widget>[
          TituloPagina(),
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
