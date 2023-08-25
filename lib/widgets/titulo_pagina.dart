import 'package:flutter/material.dart';

class TituloPagina extends StatelessWidget {
  const TituloPagina(this.tituloPagina, this.descricaoPagina, {super.key});
  final String tituloPagina;
  final String descricaoPagina;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    const TextStyle botaoStyle = TextStyle(fontSize: 18);
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  tituloPagina,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  descricaoPagina,
                  style: const TextStyle(fontWeight: FontWeight.w500),
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
                  onPressed: (
                      // exportar .csv .json com os item-da-tabela exibida
                      ) {},
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
                  onPressed: (
                      // abrir o modal
                      ) {},
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
