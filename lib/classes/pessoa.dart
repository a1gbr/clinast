import 'dart:convert';

import 'package:crypto/crypto.dart';

import 'shared/validacao_cpf.dart';

class Pessoa {
  static int _idCounter = 0;

  final int id;
  final String nome;
  final DateTime dataNascimento;
  final String endereco;
  final String bairro;
  final String cidade;
  final String cep;
  final String telefone;
  final String cpf;
  late String hashedCPF;

  Pessoa({
    required this.nome,
    required this.dataNascimento,
    required this.endereco,
    required this.bairro,
    required this.cidade,
    required this.cep,
    required this.telefone,
    required this.cpf,
  })  : id = ++_idCounter,
        hashedCPF = _hashCPF(cpf) {
    if (!isValidCPF(cpf)) {
      throw ArgumentError('CPF Inválido');
    }
  }

  static _hashCPF(String cpf) {
    final bytes = utf8.encode(cpf);
    final hashed = sha256.convert(bytes);
    return hashed.toString();
  }

  bool verificaCPF(String digitosCPF) {
    return hashedCPF == _hashCPF(digitosCPF);
  }
}
