import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import for date formatting

import '../../../presentation/screens/modal/shared/style.dart';
import '../../../presentation/widgets/shared/cores.dart';

class MedicoModal extends StatefulWidget {
  const MedicoModal({
    Key? key,
  }) : super(key: key);

  @override
  MedicoModalState createState() => MedicoModalState();
}

class MedicoModalState extends State<MedicoModal> {
  ///  CONTROLADORES
  // CHAVE GLOBAL DO FORMULARIO
  final _formKey = GlobalKey<FormState>();
  // CONTROLADORES DO FORMULARIO
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _bairroController = TextEditingController();
  final TextEditingController _cidadeController = TextEditingController();
  final TextEditingController _cepController = TextEditingController();
  final TextEditingController _telefoneController = TextEditingController();
  final TextEditingController _addressNumberController = TextEditingController();
  final TextEditingController _cargoController = TextEditingController();
  final TextEditingController _turnoController = TextEditingController();
  final TextEditingController _crmController = TextEditingController();
  final TextEditingController _especialidadeController = TextEditingController();
  // DATA
  DateTime? _dataSelecionada;

  ///  FUNCOES
  // SALVAR O MEDICO
  void _salvarMedico() {
    // CRIAR O NOVO MEDICO

    Navigator.of(context).pop();
  }

  // SELECIONAR A DATA
  Future<void> _selecionarData(BuildContext context) async {
    final DateTime? selecionada = await showDatePicker(
      context: context,
      initialDate: _dataSelecionada ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (selecionada != null && selecionada != _dataSelecionada) {
      setState(() {
        _dataSelecionada = selecionada;
      });
    }
  }

  @override
  void dispose() {
    // LIMPAR OS CONTROLADORES
    _nameController.dispose();
    _addressController.dispose();
    _cpfController.dispose();
    _bairroController.dispose();
    _cidadeController.dispose();
    _cepController.dispose();
    _telefoneController.dispose();
    _addressNumberController.dispose();
    _cargoController.dispose();
    _turnoController.dispose();
    _crmController.dispose();
    _especialidadeController.dispose();

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
        'CADASTRO DE MÉDICOS',
        textAlign: TextAlign.center,
      ),

      // CONTEUDO DO MODAL
      content: SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.6,

        // FORMULARIO DO MODAL
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,

              // CAMPOS DO FORMULARIO
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // TITULO PESSOAL
                  Title(
                    color: cinza,
                    child: const Text(
                      'INFORMAÇÕES PESSOAIS',
                      style: estiloTitulo,
                    ),
                  ),

                  // ESPACAMENTO
                  espacoVertical,

                  // CAMPO DE NOME
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _nameController,
                          decoration: const InputDecoration(
                            labelText: 'NOME',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),

                      // ESPACAMENTO
                      espacoHorizontal,

                      // CAMPO DE DATA DE NASCIMENTO
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                        child: InkWell(
                          onTap: () => _selecionarData(context),
                          child: InputDecorator(
                            decoration: const InputDecoration(
                              labelText: 'DATA NASCIMENTO',
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

                  // ESPACAMENTO
                  espacoVertical,

                  // CAMPO DE DATA DE NASCIMENTO E CPF
                  Row(
                    children: [
                      // CAMPO DE TELEFONE
                      Expanded(
                        child: TextFormField(
                          controller: _telefoneController,
                          decoration: const InputDecoration(
                            labelText: 'TELEFONE',
                            border: OutlineInputBorder(),
                            hintText: '(11) 91234-5678',
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                      ),

                      // ESPACAMENTO
                      espacoHorizontal,

                      // CAMPO DE CPF
                      Expanded(
                        child: TextFormField(
                          obscureText: true,
                          controller: _cpfController,
                          decoration: const InputDecoration(
                            labelText: 'CPF',
                            border: OutlineInputBorder(),
                            hintText: '123.456.789-00',
                          ),
                        ),
                      ),
                    ],
                  ),

                  // ESPACAMENTO
                  espacoVertical,

                  // TITULO ENDEREÇO
                  Title(
                    color: cinza,
                    child: const Text(
                      'INFOMAÇÕES DE ENDEREÇO',
                      style: estiloTitulo,
                    ),
                  ),

                  // ESPACAMENTO
                  espacoVertical,

                  // CAMPO DE CEP, NUMERO E BAIRRO
                  Row(
                    children: [
                      // CAMPO DE CEP
                      Expanded(
                        child: TextFormField(
                          controller: _cepController,
                          decoration: const InputDecoration(
                            labelText: 'CEP',
                            border: OutlineInputBorder(),
                            hintText: '12345-678',
                          ),
                        ),
                      ),

                      // ESPACAMENTO
                      espacoHorizontal,

                      // CAMPO DE NUMERO
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                        child: TextFormField(
                          controller: _addressNumberController,
                          decoration: const InputDecoration(
                            labelText: 'NÚMERO',
                            border: OutlineInputBorder(),
                            hintText: '1234',
                          ),
                        ),
                      ),

                      // ESPACAMENTO
                      espacoHorizontal,

                      // CAMPO DE BAIRRO
                      Expanded(
                        child: TextFormField(
                          controller: _bairroController,
                          decoration: const InputDecoration(
                            labelText: 'BAIRRO',
                            border: OutlineInputBorder(),
                            hintText: 'Bairro Exemplo do Sistema',
                          ),
                        ),
                      ),
                    ],
                  ),

                  // ESPACAMENTO
                  espacoVertical,

                  // CAMPO DE ENDERECO E CIDADE
                  Row(
                    children: [
                      // CAMPO DE ENDERECO
                      Expanded(
                        child: TextFormField(
                          controller: _addressController,
                          decoration: const InputDecoration(
                            labelText: 'ENDEREÇO',
                            border: OutlineInputBorder(),
                            hintText: 'Rua Exemplo do Sistema',
                          ),
                        ),
                      ),

                      // ESPACAMENTO
                      espacoHorizontal,

                      // CAMPO DE CIDADE
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.15,
                        child: TextFormField(
                          controller: _cidadeController,
                          decoration: const InputDecoration(
                            labelText: 'CIDADE',
                            border: OutlineInputBorder(),
                            hintText: 'Cidade Exemplo do Sistema',
                          ),
                        ),
                      ),
                    ],
                  ),

                  // ESPACAMENTO
                  espacoVertical,

                  // TITULO EMPREGO
                  Title(
                    color: cinza,
                    child: const Text(
                      'INFOMAÇÕES DE EMPREGO',
                      style: estiloTitulo,
                    ),
                  ),

                  // ESPACAMENTO
                  espacoVertical,

                  // CAMPO DE CARGO E TURNO
                  Row(
                    children: [
                      // CAMPO CARGOS
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          decoration: const InputDecoration(
                            labelText: 'CARGO',
                            border: OutlineInputBorder(),
                          ),
                          value: _cargoController.text.isEmpty ? null : _cargoController.text,
                          items: ['MEDICO'].map((String valor) {
                            return DropdownMenuItem<String>(
                              value: valor,
                              child: Text(valor),
                            );
                          }).toList(),
                          onChanged: (novoValor) {
                            setState(() {
                              _cargoController.text = novoValor as String;
                            });
                          },
                          isExpanded: true,
                          hint: const Text('Selecione o cargo'),
                        ),
                      ),

                      // ESPACAMENTO
                      espacoHorizontal,

                      // CAMPO TURNOS
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          decoration: const InputDecoration(
                            labelText: 'TURNO',
                            border: OutlineInputBorder(),
                          ),
                          value: _turnoController.text.isEmpty ? null : _turnoController.text,
                          items: ['// SELEÇÃO MULTIPLA'].map((String valor) {
                            return DropdownMenuItem<String>(
                              value: valor,
                              child: Text(valor),
                            );
                          }).toList(),
                          onChanged: (novoValor) {
                            setState(() {
                              _turnoController.text = novoValor as String;
                            });
                          },
                          isExpanded: true,
                          hint: const Text('Selecione os turnos'),
                        ),
                      ),
                    ],
                  ),

                  // ESPACAMENTO
                  espacoVertical,

                  // CAMPO DE CRM E ESPECIALIDADE
                  Row(
                    children: [
                      // CAMPO DE CRM
                      Expanded(
                        child: TextFormField(
                          controller: _crmController,
                          decoration: const InputDecoration(
                            labelText: 'CRM',
                            border: OutlineInputBorder(),
                            hintText: 'CRM-SP 12345',
                          ),
                        ),
                      ),

                      // ESPACAMENTO
                      espacoHorizontal,

                      // CAMPO DE ESPECIALIDADE
                      Expanded(
                        child: TextFormField(
                          controller: _especialidadeController,
                          decoration: const InputDecoration(
                            labelText: 'ESPECIALIDADE',
                            border: OutlineInputBorder(),
                            hintText: 'Selecione a especialidade',
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
                _salvarMedico();
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
