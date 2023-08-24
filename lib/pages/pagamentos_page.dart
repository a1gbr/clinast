import 'package:clinast/widgets/titulo_pagina.dart';
import 'package:flutter/material.dart';

class PagamentosPage extends StatelessWidget {
  const PagamentosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        TituloPagina(),
        Expanded(
            child: Center(
                child: Text(
          "TABELA PAGAMENTOS AQUI!",
          style: TextStyle(fontSize: 48),
        )))
      ],
    );
  }
}
