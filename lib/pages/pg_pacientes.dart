import 'package:clinast/widgets/titulo_pagina.dart';
import 'package:flutter/material.dart';

class PacientesPage extends StatefulWidget {
  const PacientesPage({super.key});

  @override
  State<PacientesPage> createState() => _PacientesPageState();
}

class _PacientesPageState extends State<PacientesPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: <Widget>[
          // TITUTLO DA PAGINA
          TituloPagina(
            "PACIENTES",
            "Lista de pacientes:",
          ),

          // ESPACAMENTO DO TITULO PRO CORPO
          SizedBox(height: 16),

          // CORPO DA PAGINA
          Expanded(
            child: Text("CORPO"),
          ),
        ],
      ),
    );
  }
}
