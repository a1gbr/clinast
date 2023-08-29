import 'package:clinast/widgets/titulo_pagina.dart';
import 'package:flutter/material.dart';

class PagamentosPage extends StatefulWidget {
  const PagamentosPage({super.key});

  @override
  State<PagamentosPage> createState() => _PagamentosPageState();
}

class _PagamentosPageState extends State<PagamentosPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: <Widget>[
          // TITULO DA PAGINA
          TituloPagina(
            "PAGAMENTOS",
            "Lista de pagamentos:",
          ),

          // ESPACAMENTO DO TITULO PRO CORPO
          SizedBox(height: 16),

          // CORPO DA PAGINA
          Expanded(
            child: Text('CORPO'),
          )
        ],
      ),
    );
  }
}
