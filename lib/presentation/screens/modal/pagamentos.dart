import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// Import for date formatting

import '../../../presentation/screens/modal/shared/style.dart';
import '../../../presentation/widgets/shared/cores.dart';

class PagamentoModal extends StatefulWidget {
  const PagamentoModal({
    Key? key,
  }) : super(key: key);

  @override
  PagamentoModalState createState() => PagamentoModalState();
}

class PagamentoModalState extends State<PagamentoModal> {
  ///  CUSTOM VARS
  // DROPDOWN
  String? _tipoProcedimento;
  String? _procedimentoSelecionado;

  ///  CONTROLADORES
  // CHAVE GLOBAL DO FORMULARIO
  final _formKey = GlobalKey<FormState>();
  // CONTROLADORES DO FORMULARIO
  final TextEditingController _procedimentoController = TextEditingController();
  final TextEditingController _valorController = TextEditingController();
  final TextEditingController _formaPagamentoController = TextEditingController();
  final TextEditingController _statusController = TextEditingController();
  final TextEditingController _codPagamentoController = TextEditingController();
  // DATA E HORA SELECIONADAS
  DateTime? _dataSelecionada;

  /// FUNCOES
  // SALVAR O PAGAMENTO
  void _salvarPagamento() {
    // CRIAR O NOVO PAGAMENTO

    Navigator.of(context).pop();
  }

  // FUNCAO PARA SELECIONAR A DATA
  Future<void> _selecionarData(BuildContext context) async {
    final DateTime? selecionada = await showDatePicker(
      context: context,
      initialDate: _dataSelecionada ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2150),
    );

    if (selecionada != null && selecionada != _dataSelecionada) {
      setState(() {
        _dataSelecionada = selecionada;
      });
    }
  }

  // FUNCAO PARA DROPDOWN EXAME/CONSULTA
  List<String> _getSpecificProcedures() {
    if (_tipoProcedimento == 'Exame') {
      return ['Exame de Sangue', 'Raio-X', 'Tomografia'];
    } else if (_tipoProcedimento == 'Consulta') {
      return ['Consulta Geral', 'Consulta ID 312312312'];
    } else {
      return [];
    }
  }

  /// OVERRIDE FUNCTIONS
  @override
  void dispose() {
    // LIMPAR OS CONTROLADORES
    _procedimentoController.dispose();
    _valorController.dispose();
    _formaPagamentoController.dispose();
    _statusController.dispose();
    _codPagamentoController.dispose();

    // NULIFICAR A DATA
    _dataSelecionada = null;

    super.dispose();
  }

  ///  A FAZER
  // SALVAMENTO
  // EDICAO
  // VISUALIZACAO
  // VALIDACAO

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      surfaceTintColor: Colors.white,

      // TITULO DO MODAL
      title: const Text(
        'CADASTRO DE PAGAMENTO',
        textAlign: TextAlign.center,
      ),

      // CONTEUDO DO MODAL
      content: SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.35,

        // FORMULARIO DO MODAL
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,

              // CAMPOS DO FORMULARIO
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // TITULO INFORMACOES
                  Title(
                    color: cinza,
                    child: const Text(
                      'INFORMAÇÕES DE PROCEDIMENTO',
                      style: estiloTitulo,
                    ),
                  ),

                  // ESPACAMENTO
                  espacoVertical,

                  // CAMPO EXAME/CONSULTA
                  Row(
                    children: [
                      // DROPDOWN EXAME OU CONSULTA
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.08,
                        child: DropdownButtonFormField<String>(
                          decoration: const InputDecoration(
                            labelText: 'TIPO',
                            border: OutlineInputBorder(),
                            hintText: 'Selecione o tipo de procedimento',
                          ),
                          value: _tipoProcedimento,
                          onChanged: (String? novoValor) {
                            setState(() {
                              _tipoProcedimento = novoValor;
                              _procedimentoSelecionado = null;
                            });
                          },
                          items: <String>['Exame', 'Consulta'].map<DropdownMenuItem<String>>(
                            (String valor) {
                              return DropdownMenuItem<String>(
                                value: valor,
                                child: Text(valor),
                              );
                            },
                          ).toList(),
                        ),
                      ),

                      // ESPACAMENTO
                      espacoHorizontal,

                      // DROPDOWN PROCEDIMENTO ESPECIFICO
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          decoration: const InputDecoration(
                            labelText: 'PROCEDIMENTO ESPECÍFICO',
                            border: OutlineInputBorder(),
                            hintText: 'Selecione o procedimento',
                          ),
                          value: _procedimentoSelecionado,
                          onChanged: (String? novoValor) {
                            setState(() {
                              _procedimentoSelecionado = novoValor;
                            });
                          },
                          // LOGICA Q DEVE ACESSAR
                          items: _getSpecificProcedures().map<DropdownMenuItem<String>>(
                            (String valor) {
                              return DropdownMenuItem<String>(
                                value: valor,
                                child: Text(valor),
                              );
                            },
                          ).toList(),
                        ),
                      ),

                      // ESPACAMENTO
                      espacoHorizontal,

                      // CAMPO VALOR
                      // DEVE PUXAR DO BANCO DE EXAME E CONSULTA NO ONCHANGED DO DROPDOWN
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.08,
                        child: TextFormField(
                          controller: _valorController,
                          decoration: const InputDecoration(
                            labelText: 'VALOR',
                            border: OutlineInputBorder(),
                            hintText: 'Insira o procedimento',
                          ),
                          keyboardType: TextInputType.number,
                          validator: (String? valor) {
                            if (valor == null || valor.isEmpty) {
                              return 'Por favor, digite o valor';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),

                  // ESPACAMENTO
                  espacoVertical,

                  // TITULO INFORMACOES
                  Title(
                    color: cinza,
                    child: const Text(
                      'INFORMAÇÕES DE PAGAMENTO',
                      style: estiloTitulo,
                    ),
                  ),

                  // ESPACAMENTO
                  espacoVertical,

                  // CAMPO STATUS
                  DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      labelText: 'STATUS DO PAGAMENTO',
                      border: OutlineInputBorder(),
                    ),
                    value: _statusController.text.isEmpty ? null : _statusController.text,
                    items: ['EXEMPLO 1', 'EXEMPLO 2'].map((String valor) {
                      return DropdownMenuItem<String>(
                        value: valor,
                        child: Text(valor),
                      );
                    }).toList(),
                    onChanged: (novoValor) {
                      setState(() {
                        _statusController.text = novoValor as String;
                      });
                    },
                    isExpanded: true,
                    hint: const Text('Selecione o status'),
                  ),

                  // ESPACAMENTO
                  espacoVertical,

                  // DROPDOWN FORMA DE PAGAMENTO
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                        child: DropdownButtonFormField<String>(
                          decoration: const InputDecoration(
                            labelText: 'FORMA DE PAGAMENTO',
                            border: OutlineInputBorder(),
                          ),
                          value: _formaPagamentoController.text.isEmpty ? null : _formaPagamentoController.text,
                          items: ['EXEMPLO 1', 'EXEMPLO 2'].map((String valor) {
                            return DropdownMenuItem<String>(
                              value: valor,
                              child: Text(valor),
                            );
                          }).toList(),
                          onChanged: (novoValor) {
                            setState(() {
                              _formaPagamentoController.text = novoValor as String;
                            });
                          },
                          isExpanded: true,
                          hint: const Text('Selecione a forma de pagamento'),
                        ),
                      ),

                      // ESPACAMENTO
                      espacoHorizontal,

                      // CAMPO CODIGO DE PAGAMENTO
                      Expanded(
                        child: TextFormField(
                          controller: _codPagamentoController,
                          decoration: const InputDecoration(
                            labelText: 'CÓDIGO DE PAGAMENTO',
                            border: OutlineInputBorder(),
                            hintText: 'Digite o código de pagamento',
                          ),
                          validator: (String? valor) {
                            if (valor == null || valor.isEmpty) {
                              return 'Por favor, digite o código de pagamento';
                            }
                            return null;
                          },
                        ),
                      ),

                      // ESPACAMENTO
                      espacoHorizontal,

                      // CAMPO DATA DO PAGAMENTO
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                        child: InkWell(
                          onTap: () => _selecionarData(context),
                          child: InputDecorator(
                            decoration: const InputDecoration(
                              labelText: 'DATA DO PAGAMENTO ',
                              border: OutlineInputBorder(),
                            ),
                            child: Text(
                              _dataSelecionada != null ? DateFormat('dd/MM/yyyy').format(_dataSelecionada!) : 'Selecione a data',
                              style: estiloSubtitulo,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      // BOTOES DO MODAL
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // BOTAO DE CANCELAR
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: tamanhoBotao,
              child: const Text(
                'CANCELAR',
                style: estiloTextoBotao,
              ),
            ),

            // ESPACAMENTO
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.04,
            ),

            // BOTAO DE SALVAR
            ElevatedButton(
              onPressed: () {
                _salvarPagamento();
              },
              style: tamanhoBotao,
              child: const Text(
                'SALVAR',
                style: estiloTextoBotao,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
