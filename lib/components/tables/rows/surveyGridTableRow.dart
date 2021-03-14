import 'package:flutter/material.dart';
import 'package:surveygrid/components/tables/cells/surveyGridTableCell.dart';
import 'package:surveygrid/models/table/rows/modelSurveyGridTableRow.dart';

TableRow SurveyGridTableRow(
    ModelSurveyGridTableRow surveyGridDataTableRow,
    List<String> columnGroupIds,
    List<String> columnIds,
    List<String> rowGroupIds,
    List<String> rowIds) {
  ValueChanged onChangedCell(value) {}

  return TableRow(
      children: surveyGridDataTableRow.cells
          .map((cell) => SurveyGridTableCell(true, cell, columnGroupIds,
              columnIds, rowGroupIds, rowIds, onChangedCell))
          .toList());
}
