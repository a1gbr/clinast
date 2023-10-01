import 'package:clinast/presentation/screens/modal/medico.dart';
import 'package:flutter/material.dart';

import '../../domain/models/medico.dart';
import '../widgets/tabela.dart';
import '../widgets/titulo_pagina.dart';
import '../widgets/toolbar.dart';

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

class _MedicosPageState extends State<MedicosPage> {
  List<Map<String, dynamic>> linhasMostraveis = [];

  void handleExportarClick() {}

  void handleNovoItemClick(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const MedicoModal();
      },
    );
  }

  void handleSearch(String bsuca) {
    setState(() {
      linhasMostraveis = filtroMedico(bsuca);
    });
  }

  void handleClearSearch() {
    setState(() {
      linhasMostraveis = filtroMedico('');
    });
  }

  List<Map<String, dynamic>> filtroMedico(String busca) {
    final textoPesquisa = busca.toLowerCase();
    return widget.itens.map((medico) {
      final linha = {
        'NOME': medico.nome,
        'DATA NASC': medico.data,
        'CIDADE': medico.cidade,
        'CEP': medico.cep,
        'TELEFONE': medico.telefone,
        'TURNO': medico.turno,
        'CRM': medico.crm,
        'ESPECIALIDADE': medico.especialidade,
      };
      return linha;
    }).where((linha) {
      return linha.values.any((valor) => valor.toString().toLowerCase().contains(textoPesquisa));
    }).toList();
  }

  @override
  void initState() {
    linhasMostraveis = filtroMedico('');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          TituloPagina(
            "MÉDICOS",
            "Lista de Doutores:",
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
          )
        ],
      ),
    );
  }
}
