import 'package:clinast/widgets/style/deprecado_estilo_tabela.dart';
import 'package:flutter/material.dart';

import 'deprecado_botoes_tabela.dart';

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
    return Padding(
      // ESPACAMENTO ENTRE ITENS
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 4,
      ),
      child: Table(
        columnWidths: mapaTabela,
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(
            children: [
              // TEXTO ID
              TableCell(
                child: Center(
                  child: Text(widget.id),
                ),
              ),

              // TEXTO PRIMARIO
              TableCell(
                child: Center(
                  child: Text(widget.textoPrimario),
                ),
              ),

              // TEXTO SECUNDARIO
              TableCell(
                child: Center(
                  child: Text(widget.textoSecundario),
                ),
              ),

              // TEXTO TIPAGEM (CONSULTA, EXAME, FORMA DE PAGAMENTO)
              TableCell(
                child: Center(
                  child: Text(widget.textoTipagem),
                ),
              ),

              // TEXTO INFO ADICIONAL (DATA)
              TableCell(
                child: Center(
                  child: Text(widget.textoInfo),
                ),
              ),

              // TEXTO COMPLEMENTAR (HORA, COD PAGAMENTO)
              TableCell(
                child: Center(
                  child: Text(widget.textoComplementar),
                ),
              ),

              // TEXTO DE STATUS DO ITEM
              TableCell(
                child: Center(
                  child: Text(widget.textoStatus),
                ),
              ),

              // BOTOES DE ACAO
              const TableCell(
                child: BotoesTabela(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
