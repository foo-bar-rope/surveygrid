import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surveygrid/components/tables/column-groups/surveyGridTableColumnGroups.dart';
import 'package:surveygrid/components/tables/row-groups/surveyGridTableRowGroups.dart';
import 'package:surveygrid/models/table/modelSurveyGridTable.dart';
import 'package:surveygrid/services/strategies/tables/strategyTable.dart';

class SurveyGridTable extends StatefulWidget {
  final ModelSurveyGridTable surveyGridTable;
  final List<String> columnGroupIds;
  final List<String> columnIds;
  final List<String> rowGroupIds;
  final List<String> rowIds;

  StrategyTable strategyTable = new StrategyTable('instrument-height-leveling');

  SurveyGridTable(this.surveyGridTable, this.columnGroupIds, this.columnIds,
      this.rowGroupIds, this.rowIds);

  @override
  _surveyGridTable createState() => _surveyGridTable();
}

class _surveyGridTable extends State<SurveyGridTable> {
  final int rowNumbers = 0;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8),
        child: Table(
          border: TableBorder(
            horizontalInside: BorderSide(color: Colors.lightBlueAccent),
            verticalInside: BorderSide(color: Colors.pinkAccent),
          ),
          defaultColumnWidth: IntrinsicColumnWidth(),
          children: [
            ...SurveyGridTableColumnGroups(
              widget.surveyGridTable.columnGroups,
              widget.columnGroupIds,
              widget.columnIds,
            ),
            ...SurveyGridTableRowGroups(
                widget.surveyGridTable.rowGroups,
                widget.columnGroupIds,
                widget.columnIds,
                widget.rowGroupIds,
                widget.rowIds)
          ],
        ));
  }
}
