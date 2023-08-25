import 'package:flutter/material.dart';

class ItemListagem extends StatefulWidget {
  const ItemListagem(
      this.id,
      this.textoPrimario,
      this.textoSecundario,
      this.textoTipagem,
      this.textoInfo,
      this.textoComplementar,
      this.textoStatus,
      {super.key});
  final String id;
  final String textoPrimario;
  final String textoSecundario;
  final String textoTipagem;
  final String textoInfo;
  final String textoComplementar;
  final String textoStatus;
  @override
  State<ItemListagem> createState() => _ItemListagemState();
}

class _ItemListagemState extends State<ItemListagem> {
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
        // NECESSARIO REAJUSTAR AS POSICOES, TALVEZ COLOCAR UM VALOR MAXIMO USANDO UM CONTAINER EM CADA TEXTO
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            widget.id,
          ),
          Text(
            widget.textoPrimario,
          ),
          Text(
            widget.textoSecundario,
          ),
          Text(
            widget.textoTipagem,
          ),
          Text(
            widget.textoInfo,
          ),
          Text(
            widget.textoComplementar,
          ),
          Text(
            widget.textoStatus,
          ),
          Row(
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
