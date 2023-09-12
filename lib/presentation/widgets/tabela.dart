import 'package:flutter/material.dart';

import '../../domain/utils/item_tabela.dart';

class TabelaDinamica<T extends ItemTabela> extends StatefulWidget {
  final List<String> colunas;
  final List<T> itens;
  final Function(List<T>) naSelecao;

  const TabelaDinamica({
    Key? key,
    required this.colunas,
    required this.itens,
    required this.naSelecao,
  }) : super(key: key);

  @override
  State<TabelaDinamica<T>> createState() => _TabelaDinamicaState<T>();
}

class _TabelaDinamicaState<T extends ItemTabela>
    extends State<TabelaDinamica<T>> {
  List<T> linhasSelecionadas = [];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          DataTable(
            columns: widget.colunas.map(
              (titulo) {
                // CRIA AS COLUNAS
                return DataColumn(
                  label: Text(
                    titulo,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                );
              },
            ).toList(),
            // CRIA AS LINHAS
            rows: widget.itens.map(
              (linha) {
                // VERIFICA SE A LINHA ESTA SELECIONADA
                final isSelected = linhasSelecionadas.contains(linha);
                return DataRow(
                  selected: isSelected,
                  // CRIA O CHECKBOX
                  onSelectChanged: (selecionado) {
                    setState(
                      () {
                        // SELECIONA A LINHA QUANDO SELECIONA O CHECKBOX
                        if (selecionado != null && selecionado) {
                          linhasSelecionadas.add(linha);
                        } else {
                          linhasSelecionadas.remove(linha);
                        }
                        // ENVIA A LISTA DE LINHAS SELECIONADAS
                        widget.naSelecao(linhasSelecionadas);
                      },
                    );
                  },
                  // CRIA AS CELULAS
                  cells: widget.colunas.map(
                    (coluna) {
                      String valorCelula = linha.pegarValor(coluna);
                      return DataCell(
                        Text(valorCelula),
                        onTap: () {
                          // SELECIONA A LINHA QUANDO SELECIONA A CELL
                          setState(
                            () {
                              if (isSelected) {
                                linhasSelecionadas.remove(linha);
                              } else {
                                linhasSelecionadas.add(linha);
                              }
                              // ENVIA A LISTA DE LINHAS SELECIONADAS
                              widget.naSelecao(linhasSelecionadas);
                            },
                          );
                        },
                      );
                    },
                  ).toList(),
                );
              },
            ).toList(),
          ),
        ],
      ),
    );
  }
}
