import 'package:flutter/material.dart';

class MenuTabela extends StatelessWidget {
  const MenuTabela({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          const Text(
            "ID",
            textAlign: TextAlign.center,
          ),
          const Text(
            "Paciente",
            textAlign: TextAlign.center,
          ),
          const Text(
            "Doutor",
            textAlign: TextAlign.center,
          ),
          const Text(
            "Consulta/Exame",
            textAlign: TextAlign.center,
          ),
          const Text(
            "Data",
            textAlign: TextAlign.center,
          ),
          const Text(
            "Hora",
            textAlign: TextAlign.center,
          ),
          const Text(
            "Status",
            textAlign: TextAlign.center,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
            child: const Text("Ações"),
          ),
        ],
      ),
    );
  }
}
