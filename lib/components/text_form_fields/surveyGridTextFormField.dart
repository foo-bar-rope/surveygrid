import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SurveyGridTextFormField extends StatelessWidget {
  final bool enabled;
  final String value;
  final InputDecoration decoration;
  final ValueChanged<String> onChanged;

  SurveyGridTextFormField(
      {this.enabled, this.value, this.decoration, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: this.enabled,
      initialValue: this.value,
      decoration: this.decoration,
      onChanged: this.onChanged,
    );
  }
}
