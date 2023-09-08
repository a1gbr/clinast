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
  'TURNO',
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

void handleExportarClick() {
  // Handle Exportar button click here
}

void handleNovoItemClick() {
  /* medicos.add(
    {
      'ID': "x",
      'NOME': 'Doutor dos Santos Silva Júnior',
      'DATA NASC': '1998/05/25',
      'RUA': 'R. NASCIMENTO DE AGOSTO',
      'BAIRRO': 'CENTRO',
      'CIDADE': 'OLIVEIRA',
      'CEP': '14445000',
      'TELEFONE': '31 225444778',
      'CPF': '***3248****',
      'TURNO': 'Manhã',
      'FUNÇÃO': 'Médico',
      'CRM': '***324824**',
      'ESPECIALIDADE': 'Cardiologista',
    },
  ); */
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
            onExportar: handleExportarClick,
            onNovoItem: handleNovoItemClick,
          ),

          // ESCAPAMENTO DO TITULO PRO CORPO
          const SizedBox(height: 16),

          // CORPO DA PAGINA
          Expanded(
            child: Center(
              // CHAMANDO O WIDGET TABELA
              child: DynamicDataTable(
                colunas: tituloColunas,
                itens: const [],
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
