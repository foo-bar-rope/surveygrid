import 'package:decimal/decimal.dart';
import 'package:flutter/widgets.dart';

class GenerateValidatorOfTextFormField implements Function {
  FormFieldValidator<String> call(
      String value, String validationType, bool required) {
    if (validationType == 'Decimal') {
      final isDecimal = new IsDecimal();
      final isPassRequired = new IsPassRequired();
      return (String value) =>
          isDecimal(value) && isPassRequired(value, required) ? '' : null;
    } else if (validationType == 'String') {
      final isString = new IsString();
      final isPassRequired = new IsPassRequired();
      return (String value) =>
          isString(value) && isPassRequired(value, required) ? '' : null;
    }
  }
}

class ValidateOfTextFormField implements Function {
  bool call(String value, String validationType, bool required) {
    if (validationType == 'Decimal') {
      final isDecimal = new IsDecimal();
      final isPassRequired = new IsPassRequired();
      return isDecimal(value) && isPassRequired(value, required);
    } else if(validationType == 'String') {
      final isString = new IsString();
      final isPassRequired = new IsPassRequired();
      return isString(value) && isPassRequired(value, required);
    }
  }
}

class IsPassRequired implements Function {
  bool call(String value, bool required) {
    return required && value != null && value != '';
  }
}

class IsDecimal implements Function {
  bool call(String value) {
    return value is Decimal;
  }
}

class IsString implements Function {
  bool call(String value) {
    return value is String;
  }
}
