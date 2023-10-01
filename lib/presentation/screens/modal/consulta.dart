import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../presentation/screens/modal/shared/style.dart';
import '../../../presentation/widgets/shared/cores.dart';

class ConsultaModal extends StatefulWidget {
  const ConsultaModal({Key? key}) : super(key: key);

  @override
  ConsultaModalState createState() => ConsultaModalState();
}

class ConsultaModalState extends State<ConsultaModal> {
  ///  CUSTOM VARS
  // LISTA DE CONVENIOS
  final List<String> convenios = [
    'Privado',
    'Unimed',
    'Amil',
    'Hapvida',
    'NotreDame Intermédica',
    'SulAmérica',
    'Bradesco Saúde',
    'Golden Cross',
    'Prevent Senior',
    'Cassi',
    'Geap'
  ];

  ///  CONTROLADORES
  // CHAVE DO FORMULARIO
  final _formKey = GlobalKey<FormState>();
  // CONTROLADORES DO FORMULARIO
  final TextEditingController _medicoController = TextEditingController();
  final TextEditingController _pacienteController = TextEditingController();
  final TextEditingController _statusProcedimentoController = TextEditingController();
  final TextEditingController _tipoExameController = TextEditingController();
  final TextEditingController _valorController = TextEditingController();
  final TextEditingController _descontoController = TextEditingController();
  // RETORNO E CONVENIO
  String? _haConvenio;
  String? _retorno;
  String? _convenioSelecionado;
  // DATA E HORA SELECIONADAS
  DateTime? _dataSelecionada;
  TimeOfDay? _horaSelecionada;

  ///  FUNCOES
  // SELECIONAR DATA
  Future<void> _selecionarData(BuildContext contexto) async {
    final DateTime? selecionada = await showDatePicker(
      context: contexto,
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

  // SELECIONAR HORA
  Future<void> _selecionarHora(BuildContext context) async {
    final TimeOfDay? selecionada = await showTimePicker(
      context: context,
      initialTime: _horaSelecionada ?? TimeOfDay.now(),
    );

    if (selecionada != null && selecionada != _horaSelecionada) {
      setState(() {
        _horaSelecionada = selecionada;
      });
    }
  }

  ///  OVERRIDE
  @override
  void dispose() {
    // DISPOSE OS CONTROLADORES
    _medicoController.dispose();
    _pacienteController.dispose();
    _statusProcedimentoController.dispose();
    _tipoExameController.dispose();
    _valorController.dispose();
    _descontoController.dispose();

    // NULIFICA AS VARIAVEIS
    _haConvenio = null;
    _retorno = null;
    _convenioSelecionado = null;
    _dataSelecionada = null;
    _horaSelecionada = null;

    // CHAMA O DISPOSE DA CLASSE PAI
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
        'CADASTRO DE CONSULTA',
        textAlign: TextAlign.center,
      ),

      // CONTEUDO DO MODAL
      content: SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.6,

        // FORMULARIO
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,

              // CAMPOS DO FORMULARIO
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // TITULO PESSOAS ENVOLVIDAS
                  Title(
                    color: cinza,
                    child: const Text(
                      'MÉDICO E PACIENTE',
                      style: estiloTitulo,
                    ),
                  ),

                  // ESPACAMENTO
                  espacoVertical,

                  // CAMPO MÉDICO
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _medicoController,
                          decoration: const InputDecoration(
                            hintText: 'Selecione o médico',
                            labelText: 'MÉDICO',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),

                      // ESPACAMENTO
                      espacoHorizontal,

                      // CAMPO ESPECIALIDADE
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.15,
                        child: TextFormField(
                          readOnly: true,
                          controller: _tipoExameController,
                          decoration: const InputDecoration(
                            labelText: 'ESPECIALIDADE',
                            border: OutlineInputBorder(),
                            hintText: 'Insira o médico',
                          ),
                        ),
                      ),
                    ],
                  ),

                  // ESPACAMENTO
                  espacoVertical,

                  // CAMPO PACIENTE
                  TextFormField(
                    controller: _pacienteController,
                    decoration: const InputDecoration(
                      hintText: 'Selecione o paciente',
                      labelText: 'PACIENTE',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  // ESPACAMENTO
                  espacoVertical,

                  // TITULO INFO CONSULTA
                  Title(
                    color: cinza,
                    child: const Text(
                      'HORÁRIO E STATUS',
                      style: estiloTitulo,
                    ),
                  ),

                  // ESPACAMENTO
                  espacoVertical,

                  // CAMPO DATA E HORA
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () => _selecionarData(context),
                          child: InputDecorator(
                            decoration: const InputDecoration(
                              labelText: 'DATA DE ATENDIMENTO',
                              border: OutlineInputBorder(),
                            ),
                            child: Text(
                              _dataSelecionada != null ? DateFormat('dd/MM/yyyy').format(_dataSelecionada!) : 'Selecione a data',
                              style: estiloSubtitulo,
                            ),
                          ),
                        ),
                      ),

                      // ESPACAMENTO
                      espacoHorizontal,

                      // CAMPO HORA
                      Expanded(
                        child: InkWell(
                          onTap: () => _selecionarHora(context),
                          child: InputDecorator(
                            decoration: const InputDecoration(
                              labelText: 'HORA DE ATENDIMENTO',
                              border: OutlineInputBorder(),
                            ),
                            child: Text(
                              _horaSelecionada != null ? _horaSelecionada!.format(context) : 'Selecione a hora',
                              style: estiloSubtitulo,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // ESPACAMENTO
                  espacoVertical,

                  // CAMPO STATUS DA CONSULTA
                  Row(
                    children: [
                      // CAMPO RETORNO
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'RETORNO?',
                              style: estiloSubtitulo,
                            ),
                            SizedBox(
                              width: 120,
                              child: RadioListTile<String>(
                                title: const Text('SIM'),
                                value: 'Y',
                                groupValue: _retorno,
                                onChanged: (String? valor) {
                                  setState(() {
                                    _retorno = valor;
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              width: 120,
                              child: RadioListTile<String>(
                                title: const Text('NÃO'),
                                value: 'N',
                                groupValue: _retorno,
                                onChanged: (String? valor) {
                                  setState(() {
                                    _retorno = valor;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),

                      // ESPACAMENTO
                      espacoHorizontal,

                      // CAMPO STATUS
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          decoration: const InputDecoration(
                            labelText: 'STATUS DA CONSULTA',
                            border: OutlineInputBorder(),
                          ),
                          value: _statusProcedimentoController.text.isEmpty ? null : _statusProcedimentoController.text,
                          items: ['EXEMPLO 1', 'EXEMPLO 2'].map((String valor) {
                            return DropdownMenuItem<String>(
                              value: valor,
                              child: Text(valor),
                            );
                          }).toList(),
                          onChanged: (novoValor) {
                            setState(() {
                              _statusProcedimentoController.text = novoValor as String;
                            });
                          },
                          isExpanded: true,
                          hint: const Text('Selecione o status'),
                        ),
                      ),
                    ],
                  ),

                  // ESPACAMENTO
                  espacoVertical,

                  // TITULO INFO CONVENIO
                  Title(
                    color: cinza,
                    child: const Text(
                      'CONVÊNIO E VALOR',
                      style: estiloTitulo,
                    ),
                  ),

                  // ESPACAMENTO
                  espacoVertical,

                  //  CAMPO CONVENIO
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'POSSUI PLANO?',
                              style: estiloSubtitulo,
                            ),
                            SizedBox(
                              width: 120,
                              child: RadioListTile<String>(
                                title: const Text('SIM'),
                                value: 'Y',
                                groupValue: _haConvenio,
                                onChanged: (String? valor) {
                                  setState(() {
                                    _haConvenio = valor;
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              width: 120,
                              child: RadioListTile<String>(
                                title: const Text('NÃO'),
                                value: 'N',
                                groupValue: _haConvenio,
                                onChanged: (String? valor) {
                                  setState(() {
                                    _haConvenio = valor;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),

                      // ESPACAMENTO
                      espacoHorizontal,

                      // CAMPO TIPO CONVENIO
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          decoration: const InputDecoration(
                            labelText: 'TIPO CONVÊNIO',
                            border: OutlineInputBorder(),
                          ),
                          items: convenios.map((String valor) {
                            return DropdownMenuItem<String>(
                              value: valor,
                              child: Text(valor),
                            );
                          }).toList(),
                          onChanged: (String? novoValor) {
                            setState(() {
                              _convenioSelecionado = novoValor;
                            });
                          },
                          value: _convenioSelecionado,
                          isExpanded: true,
                          hint: const Text('Selecione o convênio'),
                        ),
                      ),
                    ],
                  ),

                  // ESPACAMENTO
                  espacoVertical,

                  // CAMPO DESCONTO E VALOR
                  Row(
                    children: [
                      // CAMPO DESCONTO
                      Expanded(
                        child: TextFormField(
                          readOnly: true,
                          controller: _descontoController,
                          decoration: const InputDecoration(
                            labelText: 'DESCONTO',
                            border: OutlineInputBorder(),
                            hintText: 'Insira o convenio',
                          ),
                          keyboardType: const TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                        ),
                      ),

                      // ESPACAMENTO
                      espacoHorizontal,

                      // CAMPO VALOR
                      Expanded(
                        child: TextFormField(
                          controller: _valorController,
                          decoration: const InputDecoration(
                            labelText: 'VALOR',
                            border: OutlineInputBorder(),
                            hintText: 'Insira a especialidade',
                          ),
                          keyboardType: const TextInputType.numberWithOptions(
                            decimal: true,
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
                /*_savePatient();*/
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
