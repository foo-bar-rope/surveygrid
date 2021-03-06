import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surveygrid/components/tables/columns/surveyGridTableColumn.dart';
import 'package:surveygrid/components/tables/rows/surveyGridTableRow.dart';
import 'package:surveygrid/models/table/cells/modelSurveyGridTableCell.dart';
import 'package:surveygrid/models/table/columns/modelSurveyGridTableColumn.dart';
import 'package:surveygrid/models/table/rows/modelSurveyGridTableRow.dart';

class SurveyGridTable extends StatefulWidget {
  @override
  _surveyGridTable createState() => _surveyGridTable();
}

class _surveyGridTable extends State<SurveyGridTable> {
  final List<String> _columnIds = ['columnId'];
  final List<String> _rowIds = ['rowId'];
  final List<ModelSurveyGridTableColumn> _surveyGridTableColumns = [
    ModelSurveyGridTableColumn(
        'fuga', 'tableId', 'name', Timestamp.now(), Timestamp.now())
  ];
  final List<ModelSurveyGridTableRow> _surveyGridTableRows = [
    ModelSurveyGridTableRow('hoge', 'tableId', Timestamp.now(), Timestamp.now())
  ];
  final List<ModelSurveyGridTableCell> _surveyGridTableCells = [
    ModelSurveyGridTableCell('piyo', 'tableId', 'columnId', 'rowId', '100',
        Timestamp.now(), Timestamp.now())
  ];

  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Table(
              children: [
                SurveyGridTableColumn(_surveyGridTableColumns),
                ..._surveyGridTableRows.map((e) =>
                    SurveyGridTableRow(e, _surveyGridTableCells, _columnIds))
              ],
            )));
  }
}
