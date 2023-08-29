import 'package:clinast/widgets/titulo_pagina.dart';
import 'package:flutter/material.dart';

class FuncionariosPage extends StatefulWidget {
  const FuncionariosPage({super.key});

  @override
  State<FuncionariosPage> createState() => _FuncionariosPageState();
}

class _FuncionariosPageState extends State<FuncionariosPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: <Widget>[
          // TITULO DA PAGINA
          TituloPagina(
            "FUNCIONÁRIOS",
            "Lista de funcionários:",
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
