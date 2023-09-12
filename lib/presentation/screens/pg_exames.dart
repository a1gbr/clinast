import 'package:flutter/material.dart';

import '/domain/models/exame.dart';
import '../widgets/tabela.dart';
import '../widgets/titulo_pagina.dart';

// CRIA A LISTA DE TITULOS DAS COLUNAS
final List<String> tituloColunas = [
  'ID',
  'PACIENTE',
  'MÉDICO',
  'TIPO',
  'SOLICITANTE',
  'DATA',
  'HORA',
  'VALOR',
  'CONVÊNIO',
  'STATUS',
];

class ExamesPage extends StatefulWidget {
  const ExamesPage({
    required this.colunas,
    required this.itens,
    super.key,
  });
  final List<String> colunas;
  final List<Exame> itens;
  @override
  State<ExamesPage> createState() => _ExamesPageState();
}

void handleExportarClick() {}

void handleNovoItemClick() {}

class _ExamesPageState extends State<ExamesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // TITULO DA PAGINA
          const TituloPagina(
            "EXAMES",
            "Lista de exames:",
            onExportar: handleExportarClick,
            onNovoItem: handleNovoItemClick,
          ),

          // ESPACAMENTO DO TITULO PRO CORPO
          const SizedBox(height: 16),

          // CORPO DA PAGINA
          Expanded(
            child: Center(
              // CHAMANDO O WIDGET TABELA
              child: TabelaDinamica(
                  colunas: tituloColunas,
                  itens: widget.itens.map((exame) {
                    return {
                      'ID': exame.id,
                      'PACIENTE': exame.paciente,
                      'MÉDICO': exame.medico,
                      'TIPO': exame.tipoExame,
                      'SOLICITANTE': exame.solicitante,
                      'DATA': exame.dataAtendimento,
                      'HORA': exame.horaAtendimento,
                      'VALOR': exame.valor,
                      'CONVÊNIO': exame.convenio,
                      'STATUS': exame.statusProcedimento,
                    };
                  }).toList(),
                  naSelecao: (selecionados) {
                    // LOG PRO DEBUG
                    print(selecionados);
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
