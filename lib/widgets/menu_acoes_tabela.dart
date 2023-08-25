import 'package:flutter/material.dart';

class MenuAcoesTabela extends StatelessWidget {
  const MenuAcoesTabela({super.key});

  @override
  Widget build(BuildContext context) {
    const MaterialStatePropertyAll<Size> fixedStyle =
        MaterialStatePropertyAll(Size(20, 20));
    const MaterialStatePropertyAll<Size> minimumStyle =
        MaterialStatePropertyAll(Size(10, 10));
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(width: 8),
          FilledButton(
            onPressed: () {},
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.green),
                fixedSize: fixedStyle,
                minimumSize: minimumStyle),
            child: null,
          ),
          FilledButton(
            onPressed: () {},
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.amber),
                fixedSize: fixedStyle,
                minimumSize: minimumStyle),
            child: null,
          ),
          FilledButton(
            onPressed: () {},
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.red),
                fixedSize: fixedStyle,
                minimumSize: minimumStyle),
            child: null,
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
