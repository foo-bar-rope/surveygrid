import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SurveyGridTextFormField extends StatefulWidget {
  final bool enabled;
  final String text;
  final InputDecoration decoration;
  final ValueChanged<String> onChanged;

  SurveyGridTextFormField({this.enabled, this.text, this.decoration, this.onChanged});

  @override
  _surveyGridTextFormField createState() => _surveyGridTextFormField();
}

class _surveyGridTextFormField extends State<SurveyGridTextFormField> {
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.enabled,
      initialValue: widget.text,
      decoration: widget.decoration,
      onChanged: widget.onChanged,
    );
  }
}