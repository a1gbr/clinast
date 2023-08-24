import 'package:clinast/widgets/titulo_pagina.dart';
import 'package:flutter/material.dart';

class ConsultasPage extends StatelessWidget {
  const ConsultasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        TituloPagina(),
        Expanded(
            child: Center(
                child: Text(
          "TABELA CONSULTAS AQUI!",
          style: TextStyle(fontSize: 48),
        )))
      ],
    );
  }
}
