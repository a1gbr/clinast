import 'package:clinast/widgets/titulo_pagina.dart';
import 'package:flutter/material.dart';

class PacientesPage extends StatelessWidget {
  const PacientesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        TituloPagina(),
        Expanded(
            child: Center(
                child: Text(
          "TABELA PACIENTES AQUI!",
          style: TextStyle(fontSize: 48),
        )))
      ],
    );
  }
}
