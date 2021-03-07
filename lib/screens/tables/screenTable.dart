import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:surveygrid/components/tables/columns/surveyGridTableColumns.dart';
import 'package:surveygrid/components/tables/rows/surveyGridTableRows.dart';
import 'package:surveygrid/models/table/cells/modelSurveyGridTableCell.dart';
import 'package:surveygrid/models/table/columns/modelSurveyGridTableColumn.dart';
import 'package:surveygrid/models/table/rows/modelSurveyGridTableRow.dart';

class ScreenTable extends StatelessWidget {
  final List<String> _columnIds = ['columnId'];
  final List<String> _rowIds = ['rowId'];
  final List<ModelSurveyGridTableColumn> _surveyGridTableColumns = [
    ModelSurveyGridTableColumn(
        'fuga', 'tableId', 'hoge', Timestamp.now(), Timestamp.now()),
    ModelSurveyGridTableColumn(
        'fuga', 'tableId', 'fuga', Timestamp.now(), Timestamp.now()),
    ModelSurveyGridTableColumn(
        'fuga', 'tableId', 'piyo', Timestamp.now(), Timestamp.now()),
    ModelSurveyGridTableColumn(
        'fuga', 'tableId', 'name', Timestamp.now(), Timestamp.now()),
    ModelSurveyGridTableColumn(
        'fuga', 'tableId', 'name', Timestamp.now(), Timestamp.now()),
    ModelSurveyGridTableColumn(
        'fuga', 'tableId', 'name', Timestamp.now(), Timestamp.now()),
    ModelSurveyGridTableColumn(
        'fuga', 'tableId', 'name', Timestamp.now(), Timestamp.now()),
    ModelSurveyGridTableColumn(
        'fuga', 'tableId', 'name', Timestamp.now(), Timestamp.now()),
    ModelSurveyGridTableColumn(
        'fuga', 'tableId', 'name', Timestamp.now(), Timestamp.now()),
  ];
  final List<ModelSurveyGridTableRow> _surveyGridTableRows = [
    ModelSurveyGridTableRow(
        'hoge', 'tableId', Timestamp.now(), Timestamp.now(), [
      ModelSurveyGridTableCell('piyo', 'tableId', 'columnId', 'rowId',
          '100.000', Timestamp.now(), Timestamp.now()),
      ModelSurveyGridTableCell('piyo', 'tableId', 'columnId', 'rowId',
          '200.000', Timestamp.now(), Timestamp.now()),
      ModelSurveyGridTableCell('piyo', 'tableId', 'columnId', 'rowId',
          '300.000', Timestamp.now(), Timestamp.now()),
      ModelSurveyGridTableCell('piyo', 'tableId', 'columnId', 'rowId',
          '100.000', Timestamp.now(), Timestamp.now()),
      ModelSurveyGridTableCell('piyo', 'tableId', 'columnId', 'rowId',
          '100.000', Timestamp.now(), Timestamp.now()),
      ModelSurveyGridTableCell('piyo', 'tableId', 'columnId', 'rowId',
          '100.000', Timestamp.now(), Timestamp.now()),
      ModelSurveyGridTableCell('piyo', 'tableId', 'columnId', 'rowId',
          '100.000', Timestamp.now(), Timestamp.now()),
      ModelSurveyGridTableCell('piyo', 'tableId', 'columnId', 'rowId',
          '100.000', Timestamp.now(), Timestamp.now()),
      ModelSurveyGridTableCell('piyo', 'tableId', 'columnId', 'rowId',
          '100.000', Timestamp.now(), Timestamp.now()),
    ]),
  ];

  Widget build(BuildContext context) {
    return DataTable(
        columns: SurveyGridTableColumns(_surveyGridTableColumns),
        rows: SurveyGridTableRows(_surveyGridTableRows, _columnIds),
    );
  }
}
