import 'package:flutter/material.dart';
import 'package:surveygrid/components/tables/columns/surveyGridTableColumn.dart';
import 'package:surveygrid/models/table/columns/modelSurveyGridTableColumn.dart';

List<TableRow> SurveyGridTableColumns(
    List<ModelSurveyGridTableColumn> surveyGridDataTableColumns,
    List<String> columnGroupIds,
    List<String> columnIds) {

  return surveyGridDataTableColumns.map((column) =>
      SurveyGridTableColumn(
          column, columnGroupIds, columnIds));
}
