import 'package:flutter/material.dart';

import '/domain/models/exame.dart';
import '../widgets/tabela.dart';
import '../widgets/titulo_pagina.dart';
import '../widgets/toolbar.dart';
import 'modal/exame.dart';

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

class _ExamesPageState extends State<ExamesPage> {
  List<Map<String, dynamic>> linhasMostraveis = [];

  void handleExportarClick() {}

  void handleNovoItemClick(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const ExameModal();
      },
    );
  }

  void handleSearch(String busca) {
    setState(() {
      linhasMostraveis = filtroExame(busca);
    });
  }

  void handleClearSearch() {
    setState(() {
      linhasMostraveis = filtroExame('');
    });
  }

  List<Map<String, dynamic>> filtroExame(String busca) {
    final textoPesquisa = busca.toLowerCase();
    return widget.itens.map((exame) {
      final linha = {
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
      return linha;
    }).where((linha) {
      return linha.values.any((valor) => valor.toString().toLowerCase().contains(textoPesquisa));
    }).toList();
  }

  @override
  void initState() {
    linhasMostraveis = filtroExame('');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          TituloPagina(
            "EXAMES",
            "Lista de exames:",
            onExportar: handleExportarClick,
            onNovoItem: () => handleNovoItemClick(context),
          ),
          const SizedBox(height: 16),
          Toolbar(
            onSearch: handleSearch,
            onClearSearch: handleClearSearch,
          ),
          Expanded(
            child: Center(
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
