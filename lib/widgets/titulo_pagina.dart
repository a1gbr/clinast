import 'package:flutter/material.dart';

import '../widgets/style/estilo_botao.dart';

class TituloPagina extends StatelessWidget {
  const TituloPagina(this.tituloPagina, this.descricaoPagina, {super.key});

  final String tituloPagina;
  final String descricaoPagina;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
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
              children: <Widget>[
                // BOTAO DE EXPORTAR
                ElevatedButton(
                  style: estiloBotao,
                  onPressed: () {
                    // FUNCAO PARA EXPORTAR TABELA DA PAGINA ATUAL
                  },
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
                  onPressed: () {
                    // ABRIR O MODAL/PAGINA PARA CRIACAO DE NOVO ITEM
                  },
                  child: const Row(
                    children: [
                      Icon(
                        (Icons.add),
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
