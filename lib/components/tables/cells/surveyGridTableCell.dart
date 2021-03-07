import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surveygrid/components/text_form_fields/surveyGridTextFormField.dart';
import 'package:surveygrid/models/table/cells/modelSurveyGridTableCell.dart';

class SurveyGridTableCell extends StatefulWidget {
  ModelSurveyGridTableCell cell;
  final ValueChanged onChanged;

  SurveyGridTableCell({this.cell, this.onChanged});

  @override
  _surveyGridCell createState() => _surveyGridCell();
}

class _surveyGridCell extends State<SurveyGridTableCell> {
  ValueChanged<String> onChanged(String changedValue) {
    setState(() {});
    onChanged(changedValue);
  }

  Widget build(BuildContext context) {
    return SurveyGridTextFormField(
      value: widget.cell.value,
      onChanged: onChanged,
    );
  }
}
