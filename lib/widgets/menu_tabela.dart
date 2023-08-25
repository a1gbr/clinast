import 'package:clinast/widgets/style/tabela_style.dart';
import 'package:flutter/material.dart';

class MenuTabela extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: tablePadding,
        child: Table(
          columnWidths: tableStyling,
          border: const TableBorder(
              bottom: BorderSide(width: 1, color: Colors.black)),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(children: [
              TableCell(child: Center(child: Text(tituloId, style: textStyle))),
              TableCell(
                  child: Center(child: Text(tituloPrimario, style: textStyle))),
              TableCell(
                  child:
                      Center(child: Text(tituloSecundario, style: textStyle))),
              TableCell(
                  child: Center(child: Text(tituloTipagem, style: textStyle))),
              TableCell(
                  child: Center(child: Text(tituloInfo, style: textStyle))),
              TableCell(
                  child: Center(
                      child: Text(tituloComplementar, style: textStyle))),
              TableCell(
                  child: Center(child: Text(tituloStatus, style: textStyle))),
              const TableCell(
                  child: Center(
                      child: Text(
                "Ações",
                style: textStyle,
              ))),
            ])
          ],
        ),
      ),
    );
  }
}

/**Container(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 0),
            child: const Text("Ações"),
          ), */