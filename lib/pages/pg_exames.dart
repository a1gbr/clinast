import 'package:clinast/widgets/item_listagem.dart';
import 'package:clinast/widgets/menu_tabela.dart';
import 'package:clinast/widgets/titulo_pagina.dart';
import 'package:flutter/material.dart';

class ExamesPage extends StatefulWidget {
  const ExamesPage({super.key});

  @override
  State<ExamesPage> createState() => _ExamesPageState();
}

class _ExamesPageState extends State<ExamesPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: <Widget>[
          // TITULO DA PAGINA
          TituloPagina(
            "CONSULTAS",
            "Lista de consultas:",
          ),

          // ESPACAMENTO DO TITULO PRO CORPO
          SizedBox(height: 16),

          // CORPO DA PAGINA
          Expanded(
            child: Column(
              children: [
                MenuTabela(
                  "COD",
                  "NOME",
                  "MÉDICO",
                  'EXAME',
                  "DATA",
                  "HR",
                  'STATUS',
                ),
                ItemListagem(
                  "00",
                  "NOME DE PACIENTE QUALQUER",
                  'Dr. SEM NOME',
                  'ULTRASSONOGRAFIA',
                  '11/12',
                  '18:00',
                  'CONFIRMADA',
                ),
                ItemListagem(
                  "00",
                  "NOME DE PACIENTE QUALQUER",
                  'Dr. SEM NOME',
                  'RAIO X',
                  '24/10',
                  '18:00',
                  'PENDENTE',
                ),
                ItemListagem(
                  "00",
                  "NOME DE PACIENTE QUALQUER",
                  'Dr. SEM NOME',
                  'ESPIROMETRIA',
                  '11/12',
                  '18:00',
                  'CONFIRMADA',
                ),
                ItemListagem(
                  "00",
                  "NOME DE PACIENTE QUALQUER",
                  'Dr. SEM NOME',
                  'MAPEAMENTO CEREBRAL',
                  '24/10',
                  '18:00',
                  'PENDENTE',
                ),
                ItemListagem(
                  "00",
                  "NOME DE PACIENTE QUALQUER",
                  'Dr. SEM NOME',
                  'ULTRASSONOGRAFIA',
                  '11/12',
                  '18:00',
                  'CONFIRMADA',
                ),
                ItemListagem(
                  "00",
                  "NOME DE PACIENTE QUALQUER",
                  'Dr. SEM NOME',
                  'POLISSONOGRAFIA',
                  '24/10',
                  '18:00',
                  'PENDENTE',
                ),
                ItemListagem(
                  "00",
                  "NOME DE PACIENTE QUALQUER",
                  'Dr. SEM NOME',
                  'ULTRASSONOGRAFIA',
                  '11/12',
                  '18:00',
                  'CONFIRMADA',
                ),
                ItemListagem(
                  "00",
                  "NOME DE PACIENTE QUALQUER",
                  'Dr. SEM NOME',
                  'TOMOGRAFIA',
                  '24/10',
                  '18:00',
                  'PENDENTE',
                ),
                ItemListagem(
                  "00",
                  "NOME DE PACIENTE QUALQUER",
                  'Dr. SEM NOME',
                  'ULTRASSONOGRAFIA',
                  '11/12',
                  '18:00',
                  'CONFIRMADA',
                ),
                ItemListagem(
                  "00",
                  "NOME DE PACIENTE QUALQUER",
                  'Dr. SEM NOME',
                  'TESTE ERGOMÉTRICO',
                  '24/10',
                  '18:00',
                  'PENDENTE',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
