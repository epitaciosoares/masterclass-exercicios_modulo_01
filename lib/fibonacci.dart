class Fibonacci {
  static int calculate({required int numero}) {
    if (numero == 0) {
      return 0;
    } else if (numero == 1) {
      return 1;
    } else {
      return calculate(numero: (numero - 1)) + calculate(numero: (numero - 2));
    }
  }
}
