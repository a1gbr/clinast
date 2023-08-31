import 'package:clinast/widgets/style/cores.dart';
import 'package:clinast/widgets/style/estilo_tabela.dart';
import 'package:flutter/material.dart';

class BotoesTabela extends StatelessWidget {
  const BotoesTabela({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // SIZEDBOX DEIXA OS BOTOES VISUALMENTE MELHOR AGRUPADOS
        const SizedBox(width: 8),

        // POSSIVELMENTE SERA REFATORADO PRA ICONE
        FilledButton(
          onPressed: () {
            // FUNCAO PARAR ABRIR MODAL
          },
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(verde),
            fixedSize: estiloFixo,
            minimumSize: estiloMinimo,
          ),
          child: null,
        ),

        //
        FilledButton(
          onPressed: () {
            // FUNCAO PARA EDITAR -- PODERIA SER UNIFICADO COMO BOTAO ACIMA
          },
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(amarelo),
            fixedSize: estiloFixo,
            minimumSize: estiloMinimo,
          ),
          child: null,
        ),

        //
        FilledButton(
          onPressed: () {
            // BOTAO APRA APAGAR
          },
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(vermelho),
            fixedSize: estiloFixo,
            minimumSize: estiloMinimo,
          ),
          child: null,
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}
