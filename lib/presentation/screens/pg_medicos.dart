import 'package:flutter/material.dart';

import '../../domain/models/medico.dart';
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
  final List<Medico> itens;

  @override
  State<MedicosPage> createState() => _MedicosPageState();
}

void handleExportarClick() {}

void handleNovoItemClick() {}

class _MedicosPageState extends State<MedicosPage> {
  List<Map<String, dynamic>> linhasMostraveis = [];

  void handleSearch(String query) {
    setState(() {
      linhasMostraveis = widget.itens.map((medico) {
        final row = {
          'NOME': medico.nome,
          'DATA NASC': medico.data,
          'CIDADE': medico.cidade,
          'CEP': medico.cep,
          'TELEFONE': medico.telefone,
          'TURNO': medico.turno,
          'CRM': medico.crm,
          'ESPECIALIDADE': medico.especialidade,
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
      linhasMostraveis = widget.itens.map((medico) {
        final row = {
          'NOME': medico.nome,
          'DATA NASC': medico.data,
          'CIDADE': medico.cidade,
          'CEP': medico.cep,
          'TELEFONE': medico.telefone,
          'TURNO': medico.turno,
          'CRM': medico.crm,
          'ESPECIALIDADE': medico.especialidade,
        };
        return row;
      }).toList();
    });
  }

  @override
  void initState() {
    linhasMostraveis = widget.itens.map((medico) {
      final row = {
        'NOME': medico.nome,
        'DATA NASC': medico.data,
        'CIDADE': medico.cidade,
        'CEP': medico.cep,
        'TELEFONE': medico.telefone,
        'TURNO': medico.turno,
        'CRM': medico.crm,
        'ESPECIALIDADE': medico.especialidade,
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
            "MÉDICOS",
            "Lista de Doutores:",
            onExportar: handleExportarClick,
            onNovoItem: handleNovoItemClick,
          ),

          // ESCAPAMENTO DO TITULO PRO CORPO
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
          )
        ],
      ),
    );
  }
}
