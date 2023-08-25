import 'package:clinast/widgets/style/tabela_style.dart';
import 'package:flutter/material.dart';

import 'menu_acoes_tabela.dart';

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
    return SizedBox(
      height: 32,
      child: Padding(
        padding: tablePadding,
        child: Table(
            columnWidths: tableStyling,
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(children: [
                TableCell(
                  child: Center(child: Text(widget.id)),
                ),
                TableCell(
                  child: Center(child: Text(widget.textoPrimario)),
                ),
                TableCell(
                  child: Center(child: Text(widget.textoSecundario)),
                ),
                TableCell(
                  child: Center(child: Text(widget.textoTipagem)),
                ),
                TableCell(
                  child: Center(child: Text(widget.textoInfo)),
                ),
                TableCell(
                  child: Center(child: Text(widget.textoComplementar)),
                ),
                TableCell(
                  child: Center(child: Text(widget.textoStatus)),
                ),
                const TableCell(child: MenuAcoesTabela())
              ])
            ]),
      ),
    );
  }
}
