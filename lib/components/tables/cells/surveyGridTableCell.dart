import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surveygrid/components/text_form_fields/surveyGridTextFormField.dart';
import 'package:surveygrid/models/table/cells/modelSurveyGridTableCell.dart';

class SurveyGridTableCell extends StatefulWidget {
  final bool enabled;
  final ModelSurveyGridTableCell surveyGridTableColumnCell;
  final List<String> columnGroupIds;
  final List<String> columnIds;
  final List<String> rowGroupIds;
  final List<String> rowIds;
  final ValueChanged onChangedValue;

  SurveyGridTableCell(
      this.enabled,
      this.surveyGridTableColumnCell,
      this.columnGroupIds,
      this.columnIds,
      this.rowGroupIds,
      this.rowIds,
      this.onChangedValue);

  @override
  _surveyGridTableCell createState() => _surveyGridTableCell();
}

class _surveyGridTableCell extends State<SurveyGridTableCell> {
  ValueChanged onChangedValue(String value) {
    widget.onChangedValue(value);
  }

  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(
        minWidth: 80,
      ),
      padding: EdgeInsets.all(8),
      child: SurveyGridTextFormField(
        enabled: widget.enabled,
        value: widget.surveyGridTableColumnCell.value,
        textAlign: TextAlign.center,
        decoration: InputDecoration(),
        onChanged: onChangedValue,
        validationType: widget.surveyGridTableColumnCell.validationType,
      ),
    );
  }
}
