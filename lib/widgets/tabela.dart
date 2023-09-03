import 'package:flutter/material.dart';

class DynamicDataTable extends StatefulWidget {
  final List<String> colunas;
  final List<Map<String, dynamic>> itens;
  final Function(List<Map<String, dynamic>>) naSelecao;

  const DynamicDataTable({
    Key? key,
    required this.colunas,
    required this.itens,
    required this.naSelecao,
  }) : super(key: key);

  @override
  State<DynamicDataTable> createState() => _DynamicDataTableState();
}

class _DynamicDataTableState extends State<DynamicDataTable> {
  List<Map<String, dynamic>> linhaSelecionada = [];

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
                final isSelected = linhaSelecionada.contains(linha);
                return DataRow(
                  selected: isSelected,
                  // CRIA O CHECKBOX
                  onSelectChanged: (selecionado) {
                    setState(
                      () {
                        // SELECIONA A LINHA QUANDO SELECIONA O CHECKBOX
                        if (selecionado != null && selecionado) {
                          linhaSelecionada.add(linha);
                        } else {
                          linhaSelecionada.remove(linha);
                        }
                        // ENVIA A LISTA DE LINHAS SELECIONADAS
                        widget.naSelecao(linhaSelecionada);
                      },
                    );
                  },
                  // CRIA AS CELULAS
                  cells: widget.colunas.map(
                    (texto) {
                      return DataCell(
                        Text(
                          // PEGA O VALOR DA CELULA
                          linha[texto].toString(),
                        ),
                        onTap: () {
                          // SELECIONA A LINHA QUANDO SELECIONA A CELL
                          setState(
                            () {
                              if (isSelected) {
                                linhaSelecionada.remove(linha);
                              } else {
                                linhaSelecionada.add(linha);
                              }
                              // ENVIA A LISTA DE LINHAS SELECIONADAS
                              widget.naSelecao(linhaSelecionada);
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
