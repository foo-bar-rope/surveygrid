class Convarters {
  static int convertToInt(String value) {
    final intOrNull = int.tryParse(value);
    if (intOrNull == null) {
      throw new Error();
    }
    return intOrNull;
  }

  static double convertToDouble(String value) {
    final doubleOrNull = double.tryParse(value);
    if (doubleOrNull == null) {
      throw new Error();
    }
    return doubleOrNull;
  }
}
