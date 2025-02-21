class Cpf {
  static bool validarCPF({required String cpf}) {
    cpf = cpf.replaceAll(RegExp(r'[^0-9]'), '');

    if (cpf.length != 11) return false;

    if (RegExp(r'^(.)\1*$').hasMatch(cpf)) return false;

    int soma1 = 0;
    for (int i = 0; i < 9; i++) {
      soma1 += int.parse(cpf[i]) * (10 - i);
    }
    int resto1 = soma1 % 11;
    int digito1 = (resto1 < 2) ? 0 : 11 - resto1;
    if (digito1 != int.parse(cpf[9])) return false;

    int soma2 = 0;
    for (int i = 0; i < 10; i++) {
      soma2 += int.parse(cpf[i]) * (11 - i);
    }
    int resto2 = soma2 % 11;
    int digito2 = (resto2 < 2) ? 0 : 11 - resto2;
    if (digito2 != int.parse(cpf[10])) return false;

    return true;
  }
}
