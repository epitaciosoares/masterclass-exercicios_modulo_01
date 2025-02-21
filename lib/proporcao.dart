class Proporcao {
  static double? regraDeTres({double? v1, double? v2, double? v3, double? v4}) {
    if (v1 == null) {
      if (v2 != null && v3 != null && v4 != null) {
        return (v2 * v3) / v4;
      }
    }

    if (v2 == null) {
      if (v1 != null && v3 != null && v4 != null) {
        return (v1 * v4) / v3;
      }
    }

    if (v3 == null) {
      if (v1 != null && v2 != null && v4 != null) {
        return (v1 * v4) / v2;
      }
    }

    if (v4 == null) {
      if (v1 != null && v2 != null && v3 != null) {
        return (v1 * v3) / v2;
      }
    }

    return null;
  }
}
