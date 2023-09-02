import 'package:flutter/material.dart';

import '../back_falso/dt_consultas.dart';
import '../widgets/tabela.dart';
import '../widgets/titulo_pagina.dart';

// CRIA A LISTA DE TITULOS DAS COLUNAS
final List<String> tituloColunas = [
  'ID',
  'PACIENTE',
  'MÉDICO',
  'TIPO',
  'DATA',
  'HORA',
  'VALOR',
  'CONVÊNIO',
  'STATUS',
];

class ConsultasPage extends StatefulWidget {
  const ConsultasPage({
    required this.colunas,
    required this.itens,
    super.key,
  });
  final List<String> colunas;
  final List<Map<String, dynamic>> itens;
  @override
  State<ConsultasPage> createState() => _ConsultasPageState();
}

class _ConsultasPageState extends State<ConsultasPage> {
  @override
  Widget build(BuildContext context) {
    // GERANDO BACK FALSO
    consultas.isEmpty ? geradorConsultas() : null;

    return Scaffold(
      body: Column(
        children: [
          // TITULO DA PAGINA
          const TituloPagina(
            "CONSULTAS",
            "Lista de consultas:",
          ),

          // ESPACAMENTO DO TITULO PRO CORPO
          const SizedBox(height: 16),

          // CORPO DA PAGINA
          Expanded(
            child: Center(
              // CHAMANDO O WIDGET TABELA
              child: DynamicDataTable(
                colunas: tituloColunas,
                itens: consultas,
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
