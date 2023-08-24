import 'package:clinast/widgets/titulo_pagina.dart';
import 'package:flutter/material.dart';

class FuncionariosPage extends StatelessWidget {
  const FuncionariosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        TituloPagina(),
        Expanded(
            child: Center(
                child: Text(
          "TABELA FUNCIONARIOS AQUI!",
          style: TextStyle(fontSize: 48),
        )))
      ],
    );
  }
}
