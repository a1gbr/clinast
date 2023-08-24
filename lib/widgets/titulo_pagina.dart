import 'package:flutter/material.dart';

class TituloPagina extends StatelessWidget {
  const TituloPagina({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    const TextStyle botaoStyle = TextStyle(fontSize: 18);
    const tituloPagina = "TITULO PAGINA";
    const descricaoPagina = "DESCRICAO DA PAGINA";
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  tituloPagina,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  descricaoPagina,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: <Widget>[
                ElevatedButton(
                  style: style,
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Icon(
                        (Icons.upgrade),
                      ),
                      Padding(padding: EdgeInsets.all(2)),
                      Text(
                        "Exportar",
                        style: botaoStyle,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  style: style,
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Icon(
                        (Icons.add),
                      ),
                      Padding(padding: EdgeInsets.all(2)),
                      Text(
                        "Novo Item",
                        style: botaoStyle,
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
