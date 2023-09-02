import 'package:flutter/material.dart';

import '../widgets/titulo_pagina.dart';

class ResumoPage extends StatefulWidget {
  const ResumoPage({super.key});

  @override
  State<ResumoPage> createState() => _ResumoPageState();
}

class _ResumoPageState extends State<ResumoPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          // TITULO DA PAGINA
          TituloPagina(
            "RESUMO",
            "Painel de Controle.",
          ),

          // ESPACAMENTO DO TITULO PRO CORPO
          SizedBox(height: 16),

          // CORPO DA PAGINA
          Expanded(
            child: Text('CORPO'),
          ),
        ],
      ),
    );
  }
}


/**
Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
  CardResumo(
  Icons.attach_money,
  "Financeiro",
  "R\$ 10.994,23",
  "Descrição longa do card, 30 dias blah blah.",
  ),
  CardResumo(
  Icons.attach_money,
  "Financeiro",
  "R\$ 10.994,23",
  "Descrição longa do card, 30 dias blah blah.",
  ),
  CardResumo(
  Icons.attach_money,
  "Financeiro",
  "R\$ 10.994,23",
  "Descrição longa do card, 30 dias blah blah.",
  ),
  CardResumo(
  Icons.attach_money,
  "Financeiro",
  "R\$ 10.994,23",
  "Descrição longa do card, 30 dias blah blah.",
  ),
  CardResumo(
  Icons.attach_money,
  "Financeiro",
  "R\$ 10.994,23",
  "Descrição longa do card, 30 dias blah blah.",
  ),
  ],
  ),
 */