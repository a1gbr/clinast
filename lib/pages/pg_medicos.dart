import 'package:flutter/material.dart';

import '../back_falso/dt_medicos.dart';
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
  'CRM',
  'ESPECIALIDADE',
];

class MedicosPage extends StatefulWidget {
  const MedicosPage({
    required this.colunas,
    required this.itens,
    super.key,
  });

  final List<String> colunas;
  final List<Map<String, dynamic>> itens;

  @override
  State<MedicosPage> createState() => _MedicosPageState();
}

class _MedicosPageState extends State<MedicosPage> {
  @override
  Widget build(BuildContext context) {
    // GERANDO BACK FALSO
    medicos.isEmpty ? geradorMedicos() : null;
    return Scaffold(
      body: Column(
        children: <Widget>[
          // TITULO DA PAGINA
          const TituloPagina(
            "MÉDICOS",
            "Lista de Doutores:",
          ),

          // ESCAPAMENTO DO TITULO PRO CORPO
          const SizedBox(height: 16),

          // CORPO DA PAGINA
          Expanded(
            child: Center(
              // CHAMANDO O WIDGET TABELA
              child: DynamicDataTable(
                colunas: tituloColunas,
                itens: medicos,
                naSelecao: (selecionados) {
                  // LOG PRO DEBUG
                  print(selecionados);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
