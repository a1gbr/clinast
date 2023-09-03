import 'package:flutter/material.dart';

import '../back_falso/dt_pagamentos.dart';
import '../widgets/tabela.dart';
import '../widgets/titulo_pagina.dart';

// CRIA A LISTA DE TITULOS DAS COLUNAS
final List<String> tituloColunas = [
  'ID',
  'PROCEDIMENTO',
  'PACIENTE',
  'MÉDICO',
  'FORMA DE PAGAMENTO',
  'VALOR',
  'DESCONTO',
  'CODIGO DE PAGAMENTO',
  'STATUS',
];

class PagamentosPage extends StatefulWidget {
  const PagamentosPage({
    required this.colunas,
    required this.itens,
    super.key,
  });

  final List<String> colunas;
  final List<Map<String, dynamic>> itens;

  @override
  State<PagamentosPage> createState() => _PagamentosPageState();
}

void handleExportarClick() {
  // Handle Exportar button click here
}

void handleNovoItemClick() {
  pagamentos.add(
    {
      'ID': "x",
      'PROCEDIMENTO': 'Consulta',
      'PACIENTE': 'Paciente da Silva',
      'MÉDICO': 'Médico Médico',
      'FORMA DE PAGAMENTO': 'PIX',
      'VALOR': '200.00',
      'DESCONTO': '30%',
      'CODIGO DE PAGAMENTO': '123456789',
      'STATUS': 'Concluído',
    },
  );
}

class _PagamentosPageState extends State<PagamentosPage> {
  @override
  Widget build(BuildContext context) {
    // GERANDO BACK FALSO
    pagamentos.isEmpty ? geradorPagamentos() : null;

    return Scaffold(
      body: Column(
        children: <Widget>[
          // TITULO DA PAGINA
          const TituloPagina(
            "PAGAMENTOS",
            "Lista de pagamentos:",
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
                itens: pagamentos,
                naSelecao: (selecionados) {
                  //
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
