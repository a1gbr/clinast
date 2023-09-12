import 'package:flutter/material.dart';

import '../../domain/models/medico.dart';
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
  final List<Medico> itens;

  @override
  State<MedicosPage> createState() => _MedicosPageState();
}

void handleExportarClick() {
  // Handle Exportar button click here
}

void handleNovoItemClick() {}

class _MedicosPageState extends State<MedicosPage> {
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

          // CORPO DA PAGINA
          Expanded(
            child: Center(
              // CHAMANDO O WIDGET TABELA
              child: TabelaDinamica(
                colunas: tituloColunas,
                itens: widget.itens.map((medico) {
                  return {
                    'ID': medico.id,
                    'NOME': medico.nome,
                    'DATA NASC': medico.dataNascimento,
                    'CIDADE': medico.cidade,
                    'CEP': medico.cep,
                    'TELEFONE': medico.telefone,
                    'TURNO': medico.turno,
                    'CRM': medico.crm,
                    'ESPECIALIDADE': medico.especialidade,
                  };
                }).toList(),
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
