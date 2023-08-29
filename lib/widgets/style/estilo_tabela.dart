import 'package:flutter/material.dart';

const mapaTabela = {
  0: FlexColumnWidth(.5),
  1: FlexColumnWidth(1.9),
  2: FlexColumnWidth(1.6),
  3: FlexColumnWidth(1.6),
  4: FlexColumnWidth(.8),
  5: FlexColumnWidth(.6),
  6: FlexColumnWidth(1),
  7: FlexColumnWidth(1),
};

const espacoTabela = EdgeInsets.all(4);

const estiloTexto = TextStyle(fontWeight: FontWeight.bold);

const MaterialStatePropertyAll<Size> estiloFixo =
    MaterialStatePropertyAll(Size(20, 20));

const MaterialStatePropertyAll<Size> estiloMinimo =
    MaterialStatePropertyAll(Size(10, 10));
