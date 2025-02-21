import 'dart:math';

class Vigenere {
  static int aCode = 'A'.codeUnitAt(0);
  static const int alphabetSize = 26;

  static String generateKey(String text) {
    final random = Random();
    return String.fromCharCodes(
      List.generate(text.length, (_) => aCode + random.nextInt(alphabetSize)),
    );
  }

  static String encode(String text, String key) {
    text = text.toUpperCase();
    key = key.toUpperCase();

    return String.fromCharCodes(
      List.generate(text.length, (i) {
        if (!RegExp(r'^[A-Z]\$').hasMatch(text[i])) {
          return text.codeUnitAt(i);
        }
        int charCode =
            ((text.codeUnitAt(i) + key.codeUnitAt(i)) % alphabetSize) + aCode;
        return charCode;
      }),
    );
  }

  static String decode(String text, String key) {
    text = text.toUpperCase();
    key = key.toUpperCase();

    return String.fromCharCodes(
      List.generate(text.length, (i) {
        if (!RegExp(r'^[A-Z]\$').hasMatch(text[i])) {
          return text.codeUnitAt(i);
        }
        int charCode =
            ((text.codeUnitAt(i) - key.codeUnitAt(i) + alphabetSize) %
                    alphabetSize) +
                aCode;
        return charCode;
      }),
    );
  }
}
