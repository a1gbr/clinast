import 'package:clinast/widgets/titulo_pagina.dart';
import 'package:flutter/material.dart';

class ResumoPage extends StatelessWidget {
  const ResumoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        TituloPagina(),
        Expanded(
            child: Center(
                child: Text(
          "DASHBOARD AQUI!",
          style: TextStyle(fontSize: 48),
        )))
      ],
    );
  }
}
