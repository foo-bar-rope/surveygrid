import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SurveyGridTextFormField extends StatefulWidget {
  final bool enabled;
  final String value;
  final InputDecoration decoration;
  final ValueChanged<String> onChanged;

  SurveyGridTextFormField(
      {this.enabled, this.value, this.decoration, this.onChanged});

  @override
  _surveyGridTextFormField createState() => _surveyGridTextFormField();
}

class _surveyGridTextFormField extends State<SurveyGridTextFormField> {
  ValueChanged<String> onChanged(String value) {
    setState(() {});
  }

  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.enabled,
      initialValue: widget.value,
      decoration: widget.decoration,
      onChanged: widget.onChanged,
    );
  }
}
