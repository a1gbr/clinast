import 'package:flutter/material.dart';

class MenuTabela extends StatefulWidget {
  const MenuTabela(
      this.tituloId,
      this.tituloPrimario,
      this.tituloSecundario,
      this.tituloTipagem,
      this.tituloInfo,
      this.tituloComplementar,
      this.tituloStatus,
      {super.key});

  final String tituloId;
  final String tituloPrimario;
  final String tituloSecundario;
  final String tituloTipagem;
  final String tituloInfo;
  final String tituloComplementar;
  final String tituloStatus;

  @override
  State<MenuTabela> createState() => _MenuTabelaState();
}

class _MenuTabelaState extends State<MenuTabela> {
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            widget.tituloId,
          ),
          Text(
            widget.tituloPrimario,
          ),
          Text(
            widget.tituloSecundario,
          ),
          Text(
            widget.tituloTipagem,
          ),
          Text(
            widget.tituloInfo,
          ),
          Text(
            widget.tituloComplementar,
          ),
          Text(
            widget.tituloStatus,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 0),
            child: const Text("Ações"),
          ),
        ],
      ),
    );
  }
}
