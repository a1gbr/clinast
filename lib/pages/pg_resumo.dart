import 'package:clinast/widgets/cartao_resumo.dart';
import 'package:clinast/widgets/titulo_pagina.dart';
import 'package:flutter/material.dart';

class ResumoPage extends StatefulWidget {
  const ResumoPage({super.key});

  @override
  State<ResumoPage> createState() => _ResumoPageState();
}

class _ResumoPageState extends State<ResumoPage> {
  @override
  Widget build(BuildContext context) {
    // bool _isDesktop(BuildContext context) =>
    //MediaQuery.of(context).size.width >= 900;
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
            child: Column(
              children: [
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
              ],
            ),
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