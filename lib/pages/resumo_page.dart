import 'package:clinast/widgets/card_resumo.dart';
import 'package:clinast/widgets/titulo_pagina.dart';
import 'package:flutter/material.dart';

class ResumoPage extends StatelessWidget {
  const ResumoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const Column(
        children: <Widget>[
          TituloPagina("RESUMO", "Painel de Controle."),
          SizedBox(height: 16),
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
                        "Descrição longa do card, 30 dias blah blah."),
                    CardResumo(
                        Icons.attach_money,
                        "Financeiro",
                        "R\$ 10.994,23",
                        "Descrição longa do card, 30 dias blah blah."),
                    CardResumo(
                        Icons.attach_money,
                        "Financeiro",
                        "R\$ 10.994,23",
                        "Descrição longa do card, 30 dias blah blah."),
                    CardResumo(
                        Icons.attach_money,
                        "Financeiro",
                        "R\$ 10.994,23",
                        "Descrição longa do card, 30 dias blah blah."),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
