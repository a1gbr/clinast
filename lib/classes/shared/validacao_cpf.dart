bool isValidCPF(String cpf) {
  cpf = cpf.replaceAll(RegExp(r'[^\d]'), '');

  if (cpf.length != 11) {
    return false;
  }

  int sum = 0;
  for (int i = 0; i < 9; i++) {
    sum += int.parse(cpf[i]) * (10 - i);
  }
  int firstDigit = 11 - (sum % 11);

  if (firstDigit >= 10) {
    firstDigit = 0;
  }

  sum = 0;
  for (int i = 0; i < 10; i++) {
    sum += int.parse(cpf[i]) * (11 - i);
  }
  int secondDigit = 11 - (sum % 11);

  if (secondDigit >= 10) {
    secondDigit = 0;
  }

  return cpf[9] == firstDigit.toString() && cpf[10] == secondDigit.toString();
}
