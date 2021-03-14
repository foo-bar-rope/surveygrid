import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surveygrid/services/functions/validation/functionValidation.dart';

class SurveyGridTextFormField extends StatelessWidget {
  final bool enabled;
  final bool required;
  final String value;
  final TextAlign textAlign;
  final InputDecoration decoration;
  final ValueChanged<String> onChanged;
  final String validationType;

  SurveyGridTextFormField(
      {this.enabled,
      this.required,
      this.value,
      this.textAlign,
      this.decoration,
      this.onChanged,
      this.validationType});

  final GenerateValidatorOfTextFormField textFormFieldValidator =
      new GenerateValidatorOfTextFormField();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: this.enabled,
      initialValue: this.value,
      textAlign: this.textAlign,
      decoration: this.decoration,
      onChanged: this.onChanged,
      validator: textFormFieldValidator(
          this.value, this.validationType, this.required),
    );
  }
}
