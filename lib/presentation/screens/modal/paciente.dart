import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import for date formatting

import '../../../domain/models/paciente.dart';
import '../../../domain/utils/fake_database/db_pacientes.dart';
import '../../../presentation/screens/modal/shared/style.dart';
import '../../../presentation/widgets/shared/cores.dart';

class PacienteModal extends StatefulWidget {
  //final Paciente? paciente;

  const PacienteModal({
    Key? key,
    /*this.paciente*/
  }) : super(key: key);

  @override
  PacienteModalState createState() => PacienteModalState();
}

class PacienteModalState extends State<PacienteModal> {
  ///  CONTROLADORES
  // CHAVE GLOBAL DO FORMULARIO
  final _formKey = GlobalKey<FormState>();
  // CONTROLADORES DO FORMULARIO
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _alturaController = TextEditingController();
  final TextEditingController _pesoController = TextEditingController();
  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _bairroController = TextEditingController();
  final TextEditingController _cidadeController = TextEditingController();
  final TextEditingController _cepController = TextEditingController();
  final TextEditingController _telefoneController = TextEditingController();
  final TextEditingController _medicamentosController = TextEditingController();
  final TextEditingController _imcController = TextEditingController();
  final TextEditingController _addressNumberController = TextEditingController();
  // DATA
  DateTime? _dataSelecionada;

  ///  FUNCOES
  // FUNCAO PARA CALCULAR O IMC
  void _calcularIMC(String valor) {
    double altura = double.tryParse(_alturaController.text) ?? 0.0;
    double peso = double.tryParse(_pesoController.text) ?? 0.0;

    if (altura > 0 && peso > 0) {
      double imc = peso / (altura * altura);
      _imcController.text = imc.toStringAsFixed(2);
    } else {
      _imcController.text = '';
    }
  }

  // SALVAR O PACIENTE
  void _salvarPaciente() {
    // CRIA O NOVO PACIENTE
    final novoPaciente = Paciente(
      nome: _nameController.text,
      dataNascimento: _dataSelecionada ?? DateTime.now(),
      endereco: _addressController.text,
      bairro: _bairroController.text,
      cidade: _cidadeController.text,
      cep: _cepController.text,
      telefone: _telefoneController.text,
      cpf: _cpfController.text,
      altura: double.tryParse(_alturaController.text),
      peso: double.tryParse(_pesoController.text),
      imc: double.tryParse(_imcController.text),
    );

    pacientes.add(novoPaciente);
    Navigator.of(context).pop();
  }

  // FUNCAO PARA SELECIONAR A DATA
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

  ///  LIFECYCLE
  @override
  void dispose() {
    _nameController.dispose();
    _addressController.dispose();
    _alturaController.dispose();
    _pesoController.dispose();
    _cpfController.dispose();
    _bairroController.dispose();
    _cidadeController.dispose();
    _cepController.dispose();
    _telefoneController.dispose();
    _medicamentosController.dispose();
    _imcController.dispose();
    _addressNumberController.dispose();
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
        'CADASTRO DE PACIENTE',
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
                            hintText: '123',
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

                  // TITULO SAUDE
                  Title(
                    color: cinza,
                    child: const Text(
                      'INFOMAÇÕES DE SAÚDE',
                      style: estiloTitulo,
                    ),
                  ),

                  // ESPACAMENTO
                  espacoVertical,

                  // CAMPO DE ALTURA E PESO
                  Row(
                    children: [
                      // CAMPO DE ALTURA
                      Expanded(
                        child: TextFormField(
                          controller: _alturaController,
                          onChanged: _calcularIMC,
                          decoration: const InputDecoration(
                            labelText: 'ALTURA',
                            border: OutlineInputBorder(),
                            hintText: '1.70',
                          ),
                          keyboardType: const TextInputType.numberWithOptions(decimal: true),
                        ),
                      ),

                      // ESPACAMENTO
                      espacoHorizontal,

                      // CAMPO DE PESO
                      Expanded(
                        child: TextFormField(
                          controller: _pesoController,
                          onChanged: _calcularIMC,
                          decoration: const InputDecoration(
                            labelText: 'PESO',
                            border: OutlineInputBorder(),
                            hintText: '70',
                          ),
                          keyboardType: const TextInputType.numberWithOptions(decimal: true),
                        ),
                      ),

                      // ESPACAMENTO
                      espacoHorizontal,

                      // CAMPO DE BMI
                      Expanded(
                        child: TextFormField(
                          readOnly: true,
                          controller: _imcController,
                          decoration: const InputDecoration(
                            labelText: 'Cálculo IMC',
                            border: OutlineInputBorder(),
                            hintText: 'Insira altura e peso',
                          ),
                        ),
                      ),
                    ],
                  ),

                  // ESPACAMENTO
                  espacoVertical,

                  // CAMPO DE MEDICAMENTOS
                  TextFormField(
                    controller: _medicamentosController,
                    decoration: const InputDecoration(
                      labelText: 'MEDICAMENTOS',
                      border: OutlineInputBorder(),
                      hintText: 'Paracetamol, Dipirona, etc...',
                    ),
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
                _salvarPaciente();
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
