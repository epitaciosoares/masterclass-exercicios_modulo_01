import 'dart:math';

class Imc {
  static String calcularImc({required double peso, required double altura}) {
    final double imc = (peso / pow(altura, 2).round());
    String resultado = '';

    final String imcFormatado = imc.toStringAsFixed(2);

    if (imc < 16) {
      resultado = "Você está com $imcFormatado de IMC, MUITO ABAIXO DO PESO";
    } else if (imc > 16 && imc <= 17) {
      resultado = "Você está com $imcFormatado de IMC, MAGREZA MODERADA";
    } else if (imc > 17 && imc <= 18.5) {
      resultado = "Você está com $imcFormatado de IMC, MAGREZA LEVE";
    } else if (imc > 18.5 && imc <= 25) {
      resultado = "Você está com $imcFormatado de IMC, SAUDÁVEL";
    } else if (imc > 25 && imc <= 30) {
      resultado = "Você está com $imcFormatado de IMC, SOBREPESO";
    } else if (imc > 30 && imc <= 35) {
      resultado = "Você está com $imcFormatado de IMC, OBESIDADE GRAU I";
    } else if (imc > 35 && imc <= 40) {
      resultado = "Você está com $imcFormatado de IMC, OBESIDADE GRAU II";
    } else if (imc >= 40) {
      resultado = "Você está com $imcFormatado de IMC, OBESIDADE GRAU III";
    }

    return resultado;
  }
}
