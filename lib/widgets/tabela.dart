import 'package:clinast/widgets/item_listagem.dart';
import 'package:clinast/widgets/menu_tabela.dart';
import 'package:flutter/material.dart';

class Tabela extends StatelessWidget {
  const Tabela({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white24),
      child: const Column(
        children: [
          MenuTabela(
              '#', "Nome", "Doutor", "Tipo", 'Data', 'Horário', 'Status'),
          // AQUI DEVE SER REFATORADO PRA LISTVIEW
          // ELEMENTO QUE PERMITE SCROLLAR OS ITENS
          // ITENS NAO DEVEM SER MANUALMENTE INSERIDOS, E SIM USADO RECURSIVIDADE PRA RECEBER DADOS DO BD OU JSON/CSV <- DEVE SER DISCUTIDO
          ItemListagem("01", "John Doe", "Dr. Francis", "Consulta", "24/10",
              "18:00", "Marcada"),
          ItemListagem("01", "John Doe", "Dr. Francis", "Consulta", "24/10",
              "18:00", "Pago"),
          ItemListagem("01", "John Doe", "Dr. Francis", "Consulta", "24/10",
              "18:00", "Pendente"),
          ItemListagem("01", "John Doe", "Dr. Francis", "Consulta", "24/10",
              "11:45", "Pago"),
          ItemListagem("01", "John Doe", "Dr. Francis", "Consulta", "24/10",
              "14:00", "Marcada"),
          ItemListagem("01", "John Doe", "Dr. Francis", "Consulta", "24/10",
              "17:30", "Pendente"),
          ItemListagem("01", "John Doe", "Dr. Francis", "Consulta", "24/10",
              "19:00", "Marcada"),
          ItemListagem("01", "John Doe", "Dr. Francis", "Consulta", "24/10",
              "22:00", "Pago"),
        ],
      ),
    );
  }
}
