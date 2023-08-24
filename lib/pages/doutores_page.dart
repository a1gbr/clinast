import 'package:clinast/widgets/titulo_pagina.dart';
import 'package:flutter/material.dart';

class DoutoresPage extends StatelessWidget {
  const DoutoresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        TituloPagina(),
        Expanded(
            child: Center(
                child: Text(
          "TABELA DOUTORES AQUI!",
          style: TextStyle(fontSize: 48),
        )))
      ],
    );
  }
}
