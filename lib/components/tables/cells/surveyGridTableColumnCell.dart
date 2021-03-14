import 'package:flutter/cupertino.dart';
import 'package:surveygrid/components/text/surveyGridText.dart';
import 'package:surveygrid/models/table/cells/modelSurveyGridTableCell.dart';

class SurveyGridTableColumnCell extends StatefulWidget {
  final ModelSurveyGridTableCell surveyGridTableColumnCell;
  final List<String> columnGroupIds;
  final List<String> columnIds;

  SurveyGridTableColumnCell(
      this.surveyGridTableColumnCell, this.columnGroupIds, this.columnIds);

  @override
  _surveyGridTableColumnCell createState() => _surveyGridTableColumnCell();
}

class _surveyGridTableColumnCell extends State<SurveyGridTableColumnCell> {
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      child: SurveyGridText(value: widget.surveyGridTableColumnCell.value),
    );
  }
}
