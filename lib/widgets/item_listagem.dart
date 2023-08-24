import 'package:flutter/material.dart';

class ItemListagem extends StatelessWidget {
  const ItemListagem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white54,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilledButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green),
                    fixedSize: MaterialStatePropertyAll(Size(24, 24)),
                    minimumSize: MaterialStatePropertyAll(Size(10, 10))),
                child: null,
              ),
              const SizedBox(width: 8),
              FilledButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.amber),
                    fixedSize: MaterialStatePropertyAll(Size(24, 24)),
                    minimumSize: MaterialStatePropertyAll(Size(10, 10))),
                child: null,
              ),
              const SizedBox(width: 8),
              FilledButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red),
                    fixedSize: MaterialStatePropertyAll(Size(24, 24)),
                    minimumSize: MaterialStatePropertyAll(Size(10, 10))),
                child: null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
