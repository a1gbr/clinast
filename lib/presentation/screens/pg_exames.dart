import 'package:flutter/material.dart';

import '/domain/models/exame.dart';
import '../widgets/tabela.dart';
import '../widgets/titulo_pagina.dart';
import '../widgets/toolbar.dart';

// CRIA A LISTA DE TITULOS DAS COLUNAS
final List<String> tituloColunas = [
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
  List<Map<String, dynamic>> linhasMostraveis = [];

  void handleSearch(String query) {
    setState(() {
      linhasMostraveis = widget.itens.map((exame) {
        final row = {
          'PACIENTE': exame.paciente,
          'MÉDICO': exame.medico,
          'TIPO': exame.tipoExame,
          'SOLICITANTE': exame.solicitante,
          'DATA': exame.data,
          'HORA': exame.hora,
          'VALOR': exame.valor,
          'CONVÊNIO': exame.convenio,
          'STATUS': exame.statusProcedimento,
        };
        return row;
      }).where((row) {
        final searchText = query.toLowerCase();
        return row.values.any(
            (value) => value.toString().toLowerCase().contains(searchText));
      }).toList();
    });
  }

  void handleClearSearch() {
    setState(() {
      linhasMostraveis = widget.itens.map((exame) {
        final row = {
          'PACIENTE': exame.paciente,
          'MÉDICO': exame.medico,
          'TIPO': exame.tipoExame,
          'SOLICITANTE': exame.solicitante,
          'DATA': exame.data,
          'HORA': exame.hora,
          'VALOR': exame.valor,
          'CONVÊNIO': exame.convenio,
          'STATUS': exame.statusProcedimento,
        };
        return row;
      }).toList();
    });
  }

  @override
  void initState() {
    linhasMostraveis = widget.itens.map((exame) {
      final row = {
        'PACIENTE': exame.paciente,
        'MÉDICO': exame.medico,
        'TIPO': exame.tipoExame,
        'SOLICITANTE': exame.solicitante,
        'DATA': exame.data,
        'HORA': exame.hora,
        'VALOR': exame.valor,
        'CONVÊNIO': exame.convenio,
        'STATUS': exame.statusProcedimento,
      };
      return row;
    }).toList();
    super.initState();
  }

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

          // T00LBAR DE PESQUISA
          Toolbar(
            onSearch: handleSearch,
            onClearSearch: handleClearSearch,
          ),

          // CORPO DA PAGINA
          Expanded(
            child: Center(
              // CHAMANDO O WIDGET TABELA
              child: TabelaDinamica(
                colunas: tituloColunas,
                itens: linhasMostraveis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
