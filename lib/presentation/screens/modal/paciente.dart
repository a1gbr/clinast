import 'package:clinast/presentation/screens/modal/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import for date formatting

import '../../../domain/models/paciente.dart';
import '../../../domain/utils/fake_database/db_pacientes.dart';

class PatientAddModal extends StatefulWidget {
  const PatientAddModal({Key? key}) : super(key: key);

  @override
  PatientAddModalState createState() => PatientAddModalState();
}

class PatientAddModalState extends State<PatientAddModal> {
  // CHAVE GLOBAL DO FORMULARIO
  final _formKey = GlobalKey<FormState>();

  // CONTROLLERS DO FORMULARIO
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

  // VARIAVEIS DE DATA
  DateTime? _selectedDate;

  // FUNCAO PARA SALVAR O PACIENTE
  void _savePatient() {
    // LOGICA PARA PROCESSAR OS MEDICAMENTOS **QUEBRADO**

    // final medicationsInput = _medicamentosController.text;
    // final medicamentoStrings = medicationsInput.split(RegExp(r'[;,]'));

    // final medicamentos = medicamentoStrings
    //     .map((medication) => Medicamento(
    //           medicamento: MedicamentosEnum.values
    //               .firstWhere((element) => element.toString() == medication),
    //         ))
    //     .toList();

    // CRIA O NOVO PACIENTE
    final novoPaciente = Paciente(
      nome: _nameController.text,
      dataNascimento: _selectedDate ?? DateTime.now(),
      endereco: _addressController.text,
      bairro: _bairroController.text,
      cidade: _cidadeController.text,
      cep: _cepController.text,
      telefone: _telefoneController.text,
      cpf: _cpfController.text,
      altura: double.tryParse(_alturaController.text),
      peso: double.tryParse(_pesoController.text),
      // medicamentos: medicamentos,
    );

    // ADICIONA O NOVO PACIENTE NA LISTA DE PACIENTES
    pacientes.add(novoPaciente);

    // FECHA O CAMPO
    Navigator.of(context).pop();
  }

  // FUNCAO PARA SELECIONAR A DATA
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

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
        height: MediaQuery.of(context).size.height * 0.55,

        // FORMULARIO DO MODAL
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,

              // CAMPOS DO FORMULARIO
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // CAMPO DE NOME
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'NOME',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  // ESPACAMENTO
                  verticalSpacer,

                  // CAMPO DE DATA DE NASCIMENTO E CPF
                  Row(
                    children: [
                      // CAMPO DE DATA DE NASCIMENTO
                      Expanded(
                        child: InkWell(
                          onTap: () => _selectDate(context),
                          child: InputDecorator(
                            decoration: const InputDecoration(
                              labelText: 'DATA NASCIMENTO',
                              border: OutlineInputBorder(),
                            ),
                            child: Text(
                              _selectedDate != null
                                  ? DateFormat('dd/MM/yyyy')
                                      .format(_selectedDate!)
                                  : 'SELECIONE A DATA',
                              style: const TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ),

                      // ESPACAMENTO
                      horizontalSpacer,

                      // CAMPO DE CPF
                      Expanded(
                        child: TextFormField(
                          controller: _cpfController,
                          decoration: const InputDecoration(
                            labelText: 'CPF',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // ESPACAMENTO
                  verticalSpacer,

                  // CAMPO DE ENDERECO
                  TextFormField(
                    controller: _addressController,
                    decoration: const InputDecoration(
                      labelText: 'ENDEREÇO',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  // ESPACAMENTO
                  verticalSpacer,

                  // CAMPO DE BAIRRO E CIDADE
                  Row(
                    children: [
                      // CAMPO DE BAIRRO
                      Expanded(
                        child: TextFormField(
                          controller: _bairroController,
                          decoration: const InputDecoration(
                            labelText: 'BAIRRO',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),

                      // ESPACAMENTO
                      horizontalSpacer,

                      // CAMPO DE CIDADE
                      Expanded(
                        child: TextFormField(
                          controller: _cidadeController,
                          decoration: const InputDecoration(
                            labelText: 'CIDADE',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // ESPACAMENTO
                  verticalSpacer,

                  // CAMPO DE CEP E TELEFONE
                  Row(
                    children: [
                      // CAMPO DE CEP
                      Expanded(
                        child: TextFormField(
                          controller: _cepController,
                          decoration: const InputDecoration(
                            labelText: 'CEP',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),

                      // ESPACAMENTO
                      horizontalSpacer,

                      // CAMPO DE TELEFONE
                      Expanded(
                        child: TextFormField(
                          controller: _telefoneController,
                          decoration: const InputDecoration(
                            labelText: 'TELEFONE',
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                    ],
                  ),

                  // ESPACAMENTO
                  verticalSpacer,

                  // CAMPO DE ALTURA E PESO
                  Row(
                    children: [
                      // CAMPO DE ALTURA
                      Expanded(
                        child: TextFormField(
                          controller: _alturaController,
                          decoration: const InputDecoration(
                            labelText: 'ALTURA',
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                        ),
                      ),

                      // ESPACAMENTO
                      horizontalSpacer,

                      // CAMPO DE PESO
                      Expanded(
                        child: TextFormField(
                          controller: _pesoController,
                          decoration: const InputDecoration(
                            labelText: 'PESO',
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                        ),
                      ),
                    ],
                  ),

                  // ESPACAMENTO
                  verticalSpacer,

                  // CAMPO DE MEDICAMENTOS
                  TextFormField(
                    controller: _medicamentosController,
                    decoration: const InputDecoration(
                      labelText: 'MEDICAMENTOS (ex: Paracetamol,Dipirona,etc)',
                      border: OutlineInputBorder(),
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
              child: const Text(
                'CANCELAR',
                style: buttonTextStyle,
              ),
            ),

            // ESPACAMENTO
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.04,
            ),

            // BOTAO DE SALVAR
            ElevatedButton(
              onPressed: () {
                _savePatient();
              },
              child: const Text(
                'SALVAR',
                style: buttonTextStyle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
