import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surveygrid/components/text_form_fields/surveyGridTextFormField.dart';

class SurveyGridTableCell extends StatefulWidget {
  final String value;

  SurveyGridTableCell({this.value});

  @override
  _surveyGridCell createState() => _surveyGridCell();
}

class _surveyGridCell extends State<SurveyGridTableCell> {
  ValueChanged<String> onChanged(String value) {
    setState(() {});
  }

  Widget build(BuildContext context) {
    return TableCell(
        child: SurveyGridTextFormField(
      value: widget.value,
      onChanged: onChanged,
    ));
  }
}
