import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surveygrid/components/text_form_fields/surveyGridTextFormField.dart';
import 'package:surveygrid/models/table/cells/modelSurveyGridTableCell.dart';

class SurveyGridTableRowCell extends StatefulWidget {
  ModelSurveyGridTableRowCell cell;
  final ValueChanged onChanged;
  final double width;

  SurveyGridTableRowCell({this.cell, this.onChanged, this.width});

  @override
  _surveyGridTableRowCell createState() => _surveyGridTableRowCell();
}

class _surveyGridTableRowCell extends State<SurveyGridTableRowCell> {
  ValueChanged<String> onChanged(String changedValue) {
    setState(() {});
    onChanged(changedValue);
  }

  Widget build(BuildContext context) {
    return Container(
        width: widget.width,
        child: SurveyGridTextFormField(
          value: widget.cell.value,
          onChanged: onChanged,
        ));
  }
}
