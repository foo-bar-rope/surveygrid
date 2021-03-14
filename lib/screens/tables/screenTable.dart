import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:surveygrid/components/tables/surveyGridTable.dart';
import 'package:surveygrid/models/table/cells/modelSurveyGridTableCell.dart';
import 'package:surveygrid/models/table/column-groups/modelSurveyGridTableColumnGroup.dart';
import 'package:surveygrid/models/table/columns/modelSurveyGridTableColumn.dart';
import 'package:surveygrid/models/table/modelSurveyGridTable.dart';
import 'package:surveygrid/models/table/row-groups/modelSurveyGridTableRowGroup.dart';
import 'package:surveygrid/models/table/rows/modelSurveyGridTableRow.dart';

class ScreenTable extends StatelessWidget {
  final String _id = null;
  final String _tableId = null;
  final Timestamp _createdAt = null;
  final Timestamp _updatedAt = null;
  final List<String> _columnGroupIds = ['columnGroupId'];
  final List<String> _columnIds = ['columnId'];
  final List<String> _rowGroupIds = ['rowGroupId'];
  final List<String> _rowIds = ['rowId'];
  final List<ModelSurveyGridTableColumnGroup> _surveyGridTableColumnGroups = [
    ModelSurveyGridTableColumnGroup(
        'columnGroupId-1',
        'tableId',
        ['columnId'],
        null,
        null,
        [
          ModelSurveyGridTableColumn(
              'columnId-1',
              'tableId',
              'columnGroupId',
              ['cellId-1', 'cellId-2', 'cellId-3', 'cellId-4', 'cellId-5'],
              null,
              null,
              [
                ModelSurveyGridTableCell('cellId-1', 'tableId', 'columnId',
                    'rowId', null, null, 'String', 'Name'),
                ModelSurveyGridTableCell('cellId-2', 'tableId', 'columnId',
                    'rowId', null, null, 'String', 'BS'),
                ModelSurveyGridTableCell('cellId-3', 'tableId', 'columnId',
                    'rowId', null, null, 'String', 'FS'),
                ModelSurveyGridTableCell('cellId-4', 'tableId', 'columnId',
                    'rowId', null, null, 'String', 'IH'),
                ModelSurveyGridTableCell('cellId-5', 'tableId', 'columnId',
                    'rowId', null, null, 'String', 'GL'),
              ])
        ])
  ];
  final List<ModelSurveyGridTableRowGroup> _surveyGridTableRowGroups = [
    ModelSurveyGridTableRowGroup(
        'rowGroupId-1',
        'tableId',
        ['rowGroupId'],
        null,
        null,
        [
          ModelSurveyGridTableRow(
              'rowId',
              'tableId',
              'rowGroupId-1',
              ['cellId-1', 'cellId-2', 'cellId-3', 'cellId-4', 'cellId-5'],
              null,
              null,
              [
                ModelSurveyGridTableCell('cellId-1', 'tableId', 'columnId',
                    'rowId', null, null, 'Decimal', '100.000'),
                ModelSurveyGridTableCell('cellId-2', 'tableId', 'columnId',
                    'rowId', null, null, 'Decimal', '100.000'),
                ModelSurveyGridTableCell('cellId-3', 'tableId', 'columnId',
                    'rowId', null, null, 'Decimal', '100.000'),
                ModelSurveyGridTableCell('cellId-4', 'tableId', 'columnId',
                    'rowId', null, null, 'Decimal', null),
                ModelSurveyGridTableCell('cellId-5', 'tableId', 'columnId',
                    'rowId', null, null, 'Decimal', null),
              ]),
          ModelSurveyGridTableRow(
              'rowId',
              'tableId',
              'rowGroupId-1',
              ['cellId-1', 'cellId-2', 'cellId-3', 'cellId-4', 'cellId-5'],
              null,
              null,
              [
                ModelSurveyGridTableCell('cellId-1', 'tableId', 'columnId',
                    'rowId', null, null, 'Decimal', '100.000'),
                ModelSurveyGridTableCell('cellId-2', 'tableId', 'columnId',
                    'rowId', null, null, 'Decimal', '100.000'),
                ModelSurveyGridTableCell('cellId-3', 'tableId', 'columnId',
                    'rowId', null, null, 'Decimal', '100.000'),
                ModelSurveyGridTableCell('cellId-4', 'tableId', 'columnId',
                    'rowId', null, null, 'Decimal', null),
                ModelSurveyGridTableCell('cellId-5', 'tableId', 'columnId',
                    'rowId', null, null, 'Decimal', null),
              ]),
          ModelSurveyGridTableRow(
              'rowId',
              'tableId',
              'rowGroupId-1',
              ['cellId-1', 'cellId-2', 'cellId-3', 'cellId-4', 'cellId-5'],
              null,
              null,
              [
                ModelSurveyGridTableCell('cellId-1', 'tableId', 'columnId',
                    'rowId', null, null, 'Decimal', '100.000'),
                ModelSurveyGridTableCell('cellId-2', 'tableId', 'columnId',
                    'rowId', null, null, 'Decimal', '100.000'),
                ModelSurveyGridTableCell('cellId-3', 'tableId', 'columnId',
                    'rowId', null, null, 'Decimal', '100.000'),
                ModelSurveyGridTableCell('cellId-4', 'tableId', 'columnId',
                    'rowId', null, null, 'Decimal', null),
                ModelSurveyGridTableCell('cellId-5', 'tableId', 'columnId',
                    'rowId', null, null, 'Decimal', null),
              ]),
          ModelSurveyGridTableRow(
              'rowId',
              'tableId',
              'rowGroupId-1',
              ['cellId-1', 'cellId-2', 'cellId-3', 'cellId-4', 'cellId-5'],
              null,
              null,
              [
                ModelSurveyGridTableCell('cellId-1', 'tableId', 'columnId',
                    'rowId', null, null, 'Decimal', '100.000'),
                ModelSurveyGridTableCell('cellId-2', 'tableId', 'columnId',
                    'rowId', null, null, 'Decimal', '100.000'),
                ModelSurveyGridTableCell('cellId-3', 'tableId', 'columnId',
                    'rowId', null, null, 'Decimal', '100.000'),
                ModelSurveyGridTableCell('cellId-4', 'tableId', 'columnId',
                    'rowId', null, null, 'Decimal', null),
                ModelSurveyGridTableCell('cellId-5', 'tableId', 'columnId',
                    'rowId', null, null, 'Decimal', null),
              ]),
        ])
  ];

  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SurveyGridTable(
                ModelSurveyGridTable(
                    _id,
                    _tableId,
                    _columnGroupIds,
                    _rowGroupIds,
                    _createdAt,
                    _updatedAt,
                    _surveyGridTableColumnGroups,
                    _surveyGridTableRowGroups),
                _columnGroupIds,
                _columnIds,
                _rowGroupIds,
                _rowIds)));
  }
}
