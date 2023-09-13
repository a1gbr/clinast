import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:intl/intl.dart';

import 'shared/validacao_cpf.dart';

class Pessoa {
  static int _idCounter = 0;
  final int id;

  final String nome;
  final DateTime dataNascimento;
  String endereco;
  String bairro;
  String cidade;
  String cep;
  String telefone;
  String cpf;
  late final String hashedCPF;

  Pessoa({
    required this.nome,
    required this.dataNascimento,
    required this.endereco,
    required this.bairro,
    required this.cidade,
    required this.cep,
    required this.telefone,
    required this.cpf,
  }) : id = ++_idCounter {
    if (!isValidCPF(cpf)) {
      throw ArgumentError('CPF Inválido');
    }
    hashedCPF = _hashCPF(cpf);
  }

  static String _hashCPF(String cpf) {
    final bytes = utf8.encode(cpf);
    final hashed = sha256.convert(bytes);
    return hashed.toString();
  }

  bool verificaCPF(String digitosCPF) {
    return hashedCPF == _hashCPF(digitosCPF);
  }

  String get data => DateFormat('dd/MM/yyyy').format(dataNascimento);
}
