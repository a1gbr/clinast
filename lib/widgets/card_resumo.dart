import 'package:flutter/material.dart';

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
    return Container(
      height: 230,
      width: MediaQuery.of(context).size.width / 4.85,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1.4),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  widget.icon,
                  size: 28,
                ),
                Text(
                  widget.tituloCard,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 20),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.valorCard,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
            ),
            Text(widget.descCard),
          ],
        ),
      ),
    );
  }
}
