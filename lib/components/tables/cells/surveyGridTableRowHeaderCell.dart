import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surveygrid/components/text_form_fields/surveyGridTextFormField.dart';
import 'package:surveygrid/models/table/cells/modelSurveyGridTableCell.dart';

class SurveyGridTableRowHeaderCell extends StatefulWidget {
  ModelSurveyGridTableRowCell cell;
  final ValueChanged onChanged;
  final double width;

  SurveyGridTableRowHeaderCell({this.cell, this.onChanged, this.width});

  @override
  _surveyGridTableRowHeaderCell createState() =>
      _surveyGridTableRowHeaderCell();
}

class _surveyGridTableRowHeaderCell
    extends State<SurveyGridTableRowHeaderCell> {
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
