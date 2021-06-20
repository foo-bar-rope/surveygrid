import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SurveyGridTextFormField extends StatelessWidget {
  late bool enabled;
  late String value;
  late TextAlign textAlign;
  late InputDecoration decoration;
  late ValueChanged<String> onChanged;
  late TextInputType textInputType;
  late String validationType;
  late bool required;

  SurveyGridTextFormField(
      {enabled: bool,
      value: String,
      textAlign: TextAlign,
      decoration: InputDecoration,
      onChanged: Function,
      textInpuType: TextInputType,
      validationType: String,
      required: bool}) {
    this.enabled = enabled;
    this.value = value;
    this.textAlign = textAlign;
    this.decoration = decoration;
    this.onChanged = onChanged;
    this.textInputType = textInputType;
    this.validationType = validationType;
    this.required = required;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: this.enabled,
      initialValue: this.value,
      textAlign: this.textAlign,
      decoration: this.decoration,
      onChanged: this.onChanged,
      keyboardType: this.textInputType,
    );
  }
}
