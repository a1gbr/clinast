import 'package:flutter/material.dart';

import 'shared/estilo_botao.dart';

class TituloPagina extends StatelessWidget {
  const TituloPagina(
    this.tituloPagina,
    this.descricaoPagina, {
    required this.onExportar,
    required this.onNovoItem,
    Key? key,
  }) : super(key: key);

  final String tituloPagina;
  final String descricaoPagina;
  final VoidCallback onExportar;
  final VoidCallback onNovoItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tituloPagina,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  descricaoPagina,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                // BOTAO DE EXPORTAR
                ElevatedButton(
                  style: estiloBotao,
                  onPressed: onExportar,
                  child: const Row(
                    children: [
                      Icon(
                        (Icons.upgrade),
                      ),
                      Padding(
                        padding: EdgeInsets.all(2),
                      ),
                      Text(
                        "Exportar",
                        style: estiloTextoBotao,
                      ),
                    ],
                  ),
                ),

                // ESPACAMENTO ENTRE BOTOES
                const SizedBox(width: 8),

                // BOTAO DE ITEM NOVO
                ElevatedButton(
                  style: estiloBotao,
                  onPressed: onNovoItem,
                  child: const Row(
                    children: [
                      Icon(
                        Icons.add,
                      ),
                      Padding(
                        padding: EdgeInsets.all(2),
                      ),
                      Text(
                        "Novo Item",
                        style: estiloTextoBotao,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
