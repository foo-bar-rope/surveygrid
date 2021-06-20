class Validators {
  static bool isNotVoid(String? value) {
    if (value == null || value == '') {
      return false;
    }
    return true;
  }

  static bool isInt(String value) {
    return int.tryParse(value) != null;
  }

  static bool isDouble(String value) {
    return double.tryParse(value) != null;
  }
}
