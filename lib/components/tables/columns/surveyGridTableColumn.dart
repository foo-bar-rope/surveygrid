import 'package:flutter/material.dart';
import 'package:surveygrid/components/tables/cells/surveyGridTableColumnCell.dart';
import 'package:surveygrid/models/table/columns/modelSurveyGridTableColumn.dart';

TableRow SurveyGridTableColumn(
    ModelSurveyGridTableColumn surveyGridDataTableColumn,
    List<String> columnGroupIds,
    List<String> columnIds) {

  return TableRow(
      children: surveyGridDataTableColumn.cells
          .map((cell) =>
              SurveyGridTableColumnCell(cell, columnGroupIds, columnIds))
          .toList());
}
