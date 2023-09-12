import 'package:flutter/material.dart';

import '../../domain/models/paciente.dart';
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

          // CORPO DA PAGINA
          Expanded(
            child: Center(
              // CHAMANDO O WIDGET TABELA
              child: TabelaDinamica(
                colunas: tituloColunas,
                itens: widget.itens.map((paciente) {
                  return {
                    'ID': paciente.id.toString(),
                    'NOME': paciente.nome,
                    'DATA NASC': paciente.dataNascimento,
                    'CIDADE': paciente.cidade,
                    'CEP': paciente.cep,
                    'TELEFONE': paciente.telefone,
                    'ALTURA': paciente.altura,
                    'PESO': paciente.peso,
                    'MEDICAMENTOS': paciente.medicamentos,
                  };
                }).toList(),
                naSelecao: (selecionados) {
                  // LOG PRO DEBUG
                  print(selecionados);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
