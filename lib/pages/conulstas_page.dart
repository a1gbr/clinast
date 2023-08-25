import 'package:clinast/widgets/item_listagem.dart';
import 'package:clinast/widgets/menu_tabela.dart';
import 'package:clinast/widgets/titulo_pagina.dart';
import 'package:flutter/material.dart';

class ConsultasPage extends StatelessWidget {
  const ConsultasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const Column(
        children: <Widget>[
          TituloPagina("CONSULTAS", "Lista de consultas:"),
          SizedBox(height: 16),
          Expanded(
            child: Column(
              children: [
                MenuTabela("Cod", "Nome", "Médico", 'Consulta/Exame', "Data",
                    "Horário", 'Status'),
                ItemListagem("00", "JOHN DOE", 'FRANCIS', 'ULTRASSONOGRAFIA',
                    '11/12', '18:00', 'CONFIRMADA'),
                ItemListagem("00", "JOHN HAKUNA", 'MARKINHAS', 'CONSULTA',
                    '24/10', '18:00', 'PENDENTE'),
                ItemListagem("00", "JOHN DOE", 'FRANCIS', 'ULTRASSONOGRAFIA',
                    '11/12', '18:00', 'CONFIRMADA'),
                ItemListagem("00", "JOHN HAKUNA", 'MARKINHAS', 'CONSULTA',
                    '24/10', '18:00', 'PENDENTE'),
                ItemListagem("00", "JOHN DOE", 'FRANCIS', 'ULTRASSONOGRAFIA',
                    '11/12', '18:00', 'CONFIRMADA'),
                ItemListagem("00", "JOHN HAKUNA", 'MARKINHAS', 'CONSULTA',
                    '24/10', '18:00', 'PENDENTE'),
                ItemListagem("00", "JOHN DOE", 'FRANCIS', 'ULTRASSONOGRAFIA',
                    '11/12', '18:00', 'CONFIRMADA'),
                ItemListagem("00", "JOHN HAKUNA", 'MARKINHAS', 'CONSULTA',
                    '24/10', '18:00', 'PENDENTE'),
                ItemListagem("00", "JOHN DOE", 'FRANCIS', 'ULTRASSONOGRAFIA',
                    '11/12', '18:00', 'CONFIRMADA'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
