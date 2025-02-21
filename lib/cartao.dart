class Cartao {
  static bool validarNumeroDoCartao({required String numeroDoCartao}) {
    numeroDoCartao = numeroDoCartao.replaceAll(RegExp(r'\D'), '');

    if (numeroDoCartao.isEmpty) return false;

    int sum = 0;
    bool alternate = false;

    for (int i = numeroDoCartao.length - 1; i >= 0; i--) {
      int digit = int.parse(numeroDoCartao[i]);

      if (alternate) {
        digit *= 2;
        if (digit > 9) {
          digit -= 9;
        }
      }

      sum += digit;
      alternate = !alternate;
    }

    return sum % 10 == 0;
  }
}
