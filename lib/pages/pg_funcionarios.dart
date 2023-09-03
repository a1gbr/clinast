import 'package:flutter/material.dart';

import '../back_falso/dt_funcionarios.dart';
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
  'FUNÇÃO',
];

class FuncionariosPage extends StatefulWidget {
  const FuncionariosPage({
    required this.colunas,
    required this.itens,
    super.key,
  });

  final List<String> colunas;
  final List<Map<String, dynamic>> itens;

  @override
  State<FuncionariosPage> createState() => _FuncionariosPageState();
}

void handleExportarClick() {
  // Handle Exportar button click here
}

void handleNovoItemClick() {
  funcionarios.add(
    {
      'ID': 'x',
      'NOME': 'Funcionario dos Santos Silva Júnior',
      'DATA NASC': '1998/05/25',
      'RUA': 'R. NASCIMENTO DE AGOSTO',
      'BAIRRO': 'CENTRO',
      'CIDADE': 'OLIVEIRA',
      'CEP': '14445000',
      'TELEFONE': '31 225444778',
      'CPF': '***3248****',
      'TURNO': 'Manhã',
      'FUNÇÃO': 'Recepcionista',
    },
  );
}

class _FuncionariosPageState extends State<FuncionariosPage> {
  @override
  Widget build(BuildContext context) {
    // GERANDO BACK FALSO
    funcionarios.isEmpty ? geradorFuncionarios() : null;

    return Scaffold(
      body: Column(
        children: <Widget>[
          // TITULO DA PAGINA
          const TituloPagina(
            "FUNCIONÁRIOS",
            "Lista de funcionários:",
            onExportar: handleExportarClick,
            onNovoItem: handleNovoItemClick,
          ),

          // ESPACAMENTO DO TITULO PRO CORPO
          const SizedBox(height: 16),

          // CORPO DA PAGINA
          Expanded(
            child: Center(
              // CHAMANDO O WIDGET TABELA
              child: DynamicDataTable(
                colunas: tituloColunas,
                itens: funcionarios,
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
