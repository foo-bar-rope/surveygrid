import 'package:flutter/material.dart';
import 'package:surveygrid/components/tables/cells/surveyGridTableRowCell.dart';
import 'package:surveygrid/models/table/cells/modelSurveyGridTableCell.dart';
import 'package:surveygrid/models/table/rows/modelSurveyGridTableRow.dart';

int sortAscOrder(ModelSurveyGridTableRowCell A, ModelSurveyGridTableRowCell B,
    List<String> columnIds) {
  final indexA = columnIds.indexWhere((element) => element == A.columnId);
  final indexB = columnIds.indexWhere((element) => element == B.columnId);
  return indexA.compareTo(indexB);
}

DataRow SurveyGridTableRow(
    ModelSurveyGridTableRow surveyGridRow, List<String> columnIds) {
  surveyGridRow.cells.sort((a, b) => sortAscOrder(a, b, columnIds));

  return DataRow(
      cells: surveyGridRow.cells
          .map((ModelSurveyGridTableRowCell cell) => DataCell(SurveyGridTableRowCell(
                cell: cell,
              )))
          .toList());
}
