import 'package:clinast/widgets/style/cores.dart';
import 'package:clinast/widgets/style/estilo_tabela.dart';
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
    return Padding(
      padding: espacoTabela,
      child: Table(
        columnWidths: mapaTabela,
        border: const TableBorder(
          bottom: BorderSide(
            width: 1,
            color: fundo,
          ),
        ),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(
            children: [
              // TITULO ID
              TableCell(
                child: Center(
                  child: Text(
                    tituloId,
                    style: estiloTexto,
                  ),
                ),
              ),

              // TITULO PRIMARIO
              TableCell(
                child: Center(
                  child: Text(
                    tituloPrimario,
                    style: estiloTexto,
                  ),
                ),
              ),

              // TITULO SECUNDARIO
              TableCell(
                child: Center(
                  child: Text(
                    tituloSecundario,
                    style: estiloTexto,
                  ),
                ),
              ),

              // TITULO TIPAGEM (CONSULTA/EXAME/FORMA PAGAMENTO)
              TableCell(
                child: Center(
                  child: Text(
                    tituloTipagem,
                    style: estiloTexto,
                  ),
                ),
              ),

              // TITULO IFNO ADICIONAL (DATA)
              TableCell(
                child: Center(
                  child: Text(
                    tituloInfo,
                    style: estiloTexto,
                  ),
                ),
              ),

              // TITULO COMPLEMENTAR DA INFO ADICIONAL (HORA, COD PAGAMENTO)
              TableCell(
                child: Center(
                  child: Text(
                    tituloComplementar,
                    style: estiloTexto,
                  ),
                ),
              ),

              // TITULO STATUS DO ITEM
              TableCell(
                child: Center(
                  child: Text(
                    tituloStatus,
                    style: estiloTexto,
                  ),
                ),
              ),

              // TITULO ESTATICO DE ACOES
              const TableCell(
                child: Center(
                  child: Text(
                    "Ações",
                    style: estiloTexto,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
