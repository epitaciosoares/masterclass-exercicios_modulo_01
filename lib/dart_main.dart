import 'package:dart_brinck/cartao.dart';
import 'package:dart_brinck/cpf.dart';
import 'package:dart_brinck/dot_env.dart';
import 'package:dart_brinck/fibonacci.dart';
import 'package:dart_brinck/imc.dart';
import 'package:dart_brinck/proporcao.dart';
import 'package:dart_brinck/vigenere.dart';

main() {
  //Exercício - Calculo IMC
  print('Exercício - Calculo IMC: ${Imc.calcularImc(altura: 1.80, peso: 70)}!');

  //Exercício - Fibonacci:
  for (int i = 0; i < 10; i++) {
    print('Exercício - Fibonacci: ${Fibonacci.calculate(numero: i)}!');
  }

  //Exercício - Regra de 3
  print(
      "Exercício - Regra de 3: ${Proporcao.regraDeTres(v1: 5, v2: 10, v3: 2)}");
  print(
      "Exercício - Regra de 3: ${Proporcao.regraDeTres(v1: 5, v3: 2, v4: 10)}");
  print(
      "Exercício - Regra de 3: ${Proporcao.regraDeTres(v2: 10, v3: 2, v4: 5)}");
  print(
      "Exercício - Regra de 3: ${Proporcao.regraDeTres(v1: 5, v2: 10, v4: 2)}");

  //Exercício - Validador de CPF
  print(
      "Exercício - Validador de CPF: CPF 123.456.789-09 é ${Cpf.validarCPF(cpf: '123.456.789-09') ? 'Válido!' : 'Inválido!'}");
  print(
      "Exercício - Validador de CPF: CPF 222.333.111-00 é ${Cpf.validarCPF(cpf: '222.333.111-00') ? 'Válido!' : 'Inválido!'}");

  //Exercício - MOD10
  print(
      "Exercício - MOD10: O Cartão 5419 8250 0346 1210 é ${Cartao.validarNumeroDoCartao(numeroDoCartao: "5419 8250 0346 1210") ? 'Válido!' : 'Inválido!'}");
  print(
      "Exercício - MOD10: O Cartão 4916 6418 5936 9080 é ${Cartao.validarNumeroDoCartao(numeroDoCartao: "4916 6418 5936 9080") ? 'Válido!' : 'Inválido!'}");

  //Exercício - Cifra de Vigenère

  String text = "TESTEDECRIPTOGRAFIA";
  String key = Vigenere.generateKey(text);

  String encrypted = Vigenere.encode(text, key);
  String decrypted = Vigenere.decode(encrypted, key);

  print("Exercício - Cifra de Vigenère : Texto Original: $text");
  print("Exercício - Cifra de Vigenère : Chave: $key");
  print("Exercício - Cifra de Vigenère : Criptografado: $encrypted");
  print("Exercício - Cifra de Vigenère : Descriptografado: $decrypted");

  // Exerício - DotEnv
  final dotenv = DotEnv(".env");
  print(dotenv.get("DATABASE_URL"));
  print(dotenv.get("IS_ADMIN"));
  print(dotenv.get("REFRESH_TIME"));
}
