import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surveygrid/components/text/surveyGridText.dart';
import 'package:surveygrid/models/table/columns/modelSurveyGridTableColumn.dart';

class SurveyGridTableColumnCell extends StatefulWidget {
  ModelSurveyGridTableColumn column;
  final ValueChanged onChanged;

  SurveyGridTableColumnCell({this.column, this.onChanged});

  @override
  _surveyGridColumnCell createState() => _surveyGridColumnCell();
}

class _surveyGridColumnCell extends State<SurveyGridTableColumnCell> {
  ValueChanged<String> onChanged(String changedValue) {
    setState(() {});
    onChanged(changedValue);
  }

  Widget build(BuildContext context) {
    return SurveyGridText(
      value: widget.column.name,
    );
  }
}
