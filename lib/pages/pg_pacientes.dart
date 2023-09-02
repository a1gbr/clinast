import 'package:flutter/material.dart';

import '../back_falso/dt_pacientes.dart';
import '../widgets/tabela.dart';
import '../widgets/titulo_pagina.dart';

// CRIA A LISTA DE TITULOS DAS COLUNAS
final List<String> tituloColunas = [
  'ID',
  'NOME',
  'DATA NASC',
  'CIDADE',
  'CEP',
  'TELEFONE',
  'ALTURA',
  'PESO',
  'MEDICAMENTOS',
];

class PacientesPage extends StatefulWidget {
  const PacientesPage({
    required this.colunas,
    required this.itens,
    super.key,
  });

  final List<String> colunas;
  final List<Map<String, dynamic>> itens;

  @override
  State<PacientesPage> createState() => _PacientesPageState();
}

class _PacientesPageState extends State<PacientesPage> {
  @override
  Widget build(BuildContext context) {
    // GERANDO BACK FALSO
    pacientes.isEmpty ? geradorPacientes() : null;

    return Scaffold(
      body: Column(
        children: <Widget>[
          // TITUTLO DA PAGINA
          const TituloPagina(
            "PACIENTES",
            "Lista de pacientes:",
          ),

          // ESPACAMENTO DO TITULO PRO CORPO
          const SizedBox(height: 16),

          // CORPO DA PAGINA
          Expanded(
            child: Center(
              // CHAMANDO O WIDGET TABELA
              child: DynamicDataTable(
                colunas: tituloColunas,
                itens: pacientes,
                naSelecao: (selecionados) {
                  // LOG PRO DEBUG
                  print(selecionados);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
