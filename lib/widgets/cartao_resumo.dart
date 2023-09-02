import 'package:flutter/material.dart';

import '../widgets/style/cores.dart';

class CardResumo extends StatefulWidget {
  const CardResumo(this.icon, this.tituloCard, this.valorCard, this.descCard,
      {super.key});

  final String tituloCard;
  final String valorCard;
  final String descCard;
  final IconData icon;

  @override
  State<CardResumo> createState() => _CardResumoState();
}

class _CardResumoState extends State<CardResumo> {
  @override
  Widget build(BuildContext context) {
    final tamCartao = MediaQuery.of(context).size.width * 0.16;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
      height: 200,
      width: tamCartao,
      decoration: BoxDecoration(
        color: branco,
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // TITULO DO CARTAO
            Row(
              children: [
                Icon(
                  widget.icon,
                  size: 28,
                ),
                Text(
                  widget.tituloCard,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ],
            ),

            // TEXTO RELEVANTE DO CARTAO
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                widget.valorCard,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
            ),

            // DESCRICAO DO CARTAO
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(widget.descCard),
            ),
          ],
        ),
      ),
    );
  }
}
