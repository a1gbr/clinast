import 'package:flutter/material.dart';

import '../../domain/models/paciente.dart';
import '../widgets/tabela.dart';
import '../widgets/titulo_pagina.dart';
import '../widgets/toolbar.dart';
import 'modal/paciente.dart';

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

void handleNovoItemClick(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const PacienteModal();
    },
  );
}

class _PacientesPageState extends State<PacientesPage> {
  List<Map<String, dynamic>> linhasMostraveis = [];

  void handleSearch(String busca) {
    setState(() {
      linhasMostraveis = filtroPaciente(busca);
    });
  }

  void handleClearSearch() {
    setState(() {
      linhasMostraveis = filtroPaciente('');
    });
  }

  List<Map<String, dynamic>> filtroPaciente(String busca) {
    final textoPesquisa = busca.toLowerCase();
    return widget.itens.map((paciente) {
      final linha = {
        'NOME': paciente.nome,
        'DATA NASC': paciente.data,
        'CIDADE': paciente.cidade,
        'CEP': paciente.cep,
        'TELEFONE': paciente.telefone,
        'ALTURA': paciente.altura,
        'PESO': paciente.peso,
        'MEDICAMENTOS': paciente.medicamentos,
      };
      return linha;
    }).where((linha) {
      return linha.values.any((valor) => valor.toString().toLowerCase().contains(textoPesquisa));
    }).toList();
  }

  @override
  void initState() {
    linhasMostraveis = filtroPaciente('');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          TituloPagina(
            "PACIENTES",
            "Lista de pacientes:",
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
