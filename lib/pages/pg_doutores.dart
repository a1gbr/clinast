import 'package:clinast/widgets/titulo_pagina.dart';
import 'package:flutter/material.dart';

class DoutoresPage extends StatefulWidget {
  const DoutoresPage({super.key});

  @override
  State<DoutoresPage> createState() => _DoutoresPageState();
}

class _DoutoresPageState extends State<DoutoresPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: <Widget>[
          // TITULO DA PAGINA
          TituloPagina(
            "DOUTORES",
            "Lista de Doutores:",
          ),

          // ESCAPAMENTO DO TITULO PRO CORPO
          SizedBox(height: 16),

          // CORPO DA PAGINA
          Expanded(
            child: Text('COPRO'),
          )
        ],
      ),
    );
  }
}
