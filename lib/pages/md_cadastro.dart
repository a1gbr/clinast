import 'package:flutter/material.dart';

class ModalCadastro extends StatefulWidget {
  const ModalCadastro({super.key});

  @override
  State<ModalCadastro> createState() => _ModalCadastroState();
}

class _ModalCadastroState extends State<ModalCadastro> {
  final _formKey = GlobalKey<FormState>();
  String _nomeCompleto = '';
  String _endereco = '';
  String _numero = '';
  String _bairro = '';
  String _cidade = '';
  String _telefone = '';
  String _email = '';
  DateTime _dataNascimento = DateTime.now();
  String _cpf = '';
  String _crmConvenioTurno = '';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Cadastro'),
      content: Container(
        width: 500, // Defina a largura desejada aqui
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _buildNomeCompletoField(),
              _buildEnderecoField(),
              // _buildNumeroField(),
              // _buildBairroField(),
              // _buildCidadeField(),
              Row(
                children: [
                  Expanded(
                    child: _buildNumeroField(),
                  ),
                  SizedBox(width: 10.0), // Espaçamento entre os campos
                  Expanded(
                    child: _buildBairroField(),
                  ),
                  SizedBox(width: 10.0), // Espaçamento entre os campos
                  Expanded(
                    child: _buildCidadeField(),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: _buildTelefoneField(),
                  ),
                  SizedBox(width: 10.0), // Espaçamento entre os campos
                  Expanded(
                    child: _buildEmailField(),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: _buildDataNascimentoField(),
                  ),
                  SizedBox(width: 10.0), // Espaçamento entre os campos
                  Expanded(
                    child: _buildCPFField(),
                  ),
                ],
              ),

              _buildCrmConvenioTurnoField(),
              // Container(
              //   margin: EdgeInsets.only(top: 40.0),
              //   child: ElevatedButton(
              //     onPressed: _submitForm,
              //     child: const Text('Cadastrar'),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNomeCompletoField() {
    return Container(
        margin: EdgeInsets.only(bottom: 10.0),
        child: TextFormField(
          decoration: const InputDecoration(
              labelText: 'Nome completo', border: OutlineInputBorder()),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Por favor, informe seu nome completo.';
            }
            return null;
          },
          onSaved: (value) {
            _nomeCompleto = value!;
          },
        ));
  }

  Widget _buildEnderecoField() {
    return Container(
        margin: EdgeInsets.only(bottom: 10.0),
        child: TextFormField(
          decoration: const InputDecoration(
              labelText: 'Endereço', border: OutlineInputBorder()),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Por favor, informe seu endereço.';
            }
            return null;
          },
          onSaved: (value) {
            _endereco = value!;
          },
        ));
  }

  Widget _buildNumeroField() {
    return Container(
        margin: EdgeInsets.only(bottom: 10.0),
        child: TextFormField(
          decoration: const InputDecoration(
              labelText: 'Numero', border: OutlineInputBorder()),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Por favor, informe seu numero.';
            }
            return null;
          },
          onSaved: (value) {
            _numero = value!;
          },
        ));
  }

  Widget _buildBairroField() {
    return Container(
        margin: EdgeInsets.only(bottom: 10.0),
        child: TextFormField(
          decoration: const InputDecoration(
              labelText: 'Bairro', border: OutlineInputBorder()),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Por favor, informe seu bairro.';
            }
            return null;
          },
          onSaved: (value) {
            _bairro = value!;
          },
        ));
  }

  Widget _buildCidadeField() {
    return Container(
        margin: EdgeInsets.only(bottom: 10.0),
        child: TextFormField(
          decoration: const InputDecoration(
              labelText: 'Cidade', border: OutlineInputBorder()),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Por favor, informe sua cidade.';
            }
            return null;
          },
          onSaved: (value) {
            _cidade = value!;
          },
        ));
  }

  Widget _buildTelefoneField() {
    return Container(
        margin: EdgeInsets.only(bottom: 10.0),
        child: TextFormField(
          decoration: const InputDecoration(
              labelText: 'Telefone', border: OutlineInputBorder()),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Por favor, informe seu telefone.';
            }
            return null;
          },
          onSaved: (value) {
            _telefone = value!;
          },
        ));
  }

  Widget _buildEmailField() {
    return Container(
        margin: EdgeInsets.only(bottom: 10.0),
        child: TextFormField(
          decoration: const InputDecoration(
              labelText: 'Email', border: OutlineInputBorder()),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Por favor, informe seu email.';
            }
            return null;
          },
          onSaved: (value) {
            _email = value!;
          },
        ));
  }

  Widget _buildDataNascimentoField() {
    return Container(
        margin: EdgeInsets.only(bottom: 10.0),
        child: TextFormField(
          decoration: const InputDecoration(
              labelText: 'Data Nascimento', border: OutlineInputBorder()),
          onTap: _selectDataNascimento,
          validator: _validateDataNascimento,
          onSaved: _saveDataNascimento,
        ));
  }

  void _selectDataNascimento() async {
    DateTime currentDate = DateTime.now();
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: DateTime(1900, 1, 1),
      lastDate: currentDate,
    );

    if (selectedDate != null) {
      setState(() {
        _dataNascimento = selectedDate.toLocal();
      });
    }
  }

  String? _validateDataNascimento(String? dataNascimento) {
    if (dataNascimento == null || dataNascimento.isEmpty) {
      return 'Por favor, informe sua data de nascimento.';
    }
    return null;
  }

  void _saveDataNascimento(String? dataNascimento) {
    _dataNascimento = dataNascimento! as DateTime;
  }

  Widget _buildCPFField() {
    return Container(
        margin: EdgeInsets.only(bottom: 10.0),
        child: TextFormField(
          decoration: const InputDecoration(
              labelText: 'CPF', border: OutlineInputBorder()),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Por favor, informe seu CPF.';
            }
            return null;
          },
          onSaved: (value) {
            _cpf = value!;
          },
        ));
  }

  Widget _buildCrmConvenioTurnoField() {
    return Container(
        margin: EdgeInsets.only(bottom: 10.0),
        child: TextFormField(
          decoration: const InputDecoration(
              labelText: 'CRM/CONVENIO/TURNO', border: OutlineInputBorder()),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Por favor, informe o CRM ou Convenio ou Turno.';
            }
            return null;
          },
          onSaved: (value) {
            _crmConvenioTurno = value!;
          },
        ));
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      // Do something with the form data, e.g., send it to an API or process it
      // You can access _nomeCompleto, _endereco, _bairro, and _cidade here
    }
  }
}
