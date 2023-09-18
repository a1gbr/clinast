import 'package:flutter/material.dart';

import '../../domain/models/paciente.dart';
import '../widgets/tabela.dart';
import '../widgets/titulo_pagina.dart';
import '../widgets/toolbar.dart';

// CRIA A LISTA DE TITULOS DAS COLUNAS
final List<String> tituloColunas = [
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
  final List<Paciente> itens;

  @override
  State<PacientesPage> createState() => _PacientesPageState();
}

void handleExportarClick() {}

void handleNovoItemClick() {}

class _PacientesPageState extends State<PacientesPage> {
  List<Map<String, dynamic>> linhasMostraveis = [];

  void handleSearch(String query) {
    setState(() {
      linhasMostraveis = widget.itens.map((paciente) {
        final row = {
          'NOME': paciente.nome,
          'DATA NASC': paciente.data,
          'CIDADE': paciente.cidade,
          'CEP': paciente.cep,
          'TELEFONE': paciente.telefone,
          'ALTURA': paciente.altura,
          'PESO': paciente.peso,
          'MEDICAMENTOS': paciente.medicamentos,
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
      linhasMostraveis = widget.itens.map((paciente) {
        final row = {
          'NOME': paciente.nome,
          'DATA NASC': paciente.data,
          'CIDADE': paciente.cidade,
          'CEP': paciente.cep,
          'TELEFONE': paciente.telefone,
          'ALTURA': paciente.altura,
          'PESO': paciente.peso,
          'MEDICAMENTOS': paciente.medicamentos,
        };
        return row;
      }).toList();
    });
  }

  @override
  void initState() {
    linhasMostraveis = widget.itens.map((paciente) {
      final row = {
        'NOME': paciente.nome,
        'DATA NASC': paciente.data,
        'CIDADE': paciente.cidade,
        'CEP': paciente.cep,
        'TELEFONE': paciente.telefone,
        'ALTURA': paciente.altura,
        'PESO': paciente.peso,
        'MEDICAMENTOS': paciente.medicamentos,
      };
      return row;
    }).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // GERANDO BACK FALSO

    return Scaffold(
      body: Column(
        children: <Widget>[
          // TITUTLO DA PAGINA
          const TituloPagina(
            "PACIENTES",
            "Lista de pacientes:",
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
