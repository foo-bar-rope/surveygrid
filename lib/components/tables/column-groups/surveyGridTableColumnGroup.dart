import 'package:flutter/material.dart';
import 'package:surveygrid/components/tables/columns/surveyGridTableColumn.dart';
import 'package:surveygrid/models/table/column-groups/modelSurveyGridTableColumnGroup.dart';

List<TableRow> SurveyGridTableColumnGroup(
    ModelSurveyGridTableColumnGroup surveyGridDataTableColumnGroup,
    List<String> columnGroupIds,
    List<String> columnIds) {
  return surveyGridDataTableColumnGroup.columns
      .map((column) => SurveyGridTableColumn(column, columnGroupIds, columnIds))
      .toList();
}
