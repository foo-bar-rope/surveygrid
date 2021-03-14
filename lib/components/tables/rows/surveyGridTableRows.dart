import 'package:flutter/material.dart';
import 'package:surveygrid/components/tables/rows/surveyGridTableRow.dart';
import 'package:surveygrid/models/table/rows/modelSurveyGridTableRow.dart';

List<TableRow> SurveyGridTableRows(
    List<ModelSurveyGridTableRow> surveyGridDataTableRows,
    List<String> columnGroupIds,
    List<String> columnIds,
    List<String> rowGroupIds,
    List<String> rowIds) {

  return surveyGridDataTableRows.map((row) =>
      SurveyGridTableRow(row, columnGroupIds, columnIds, rowGroupIds, rowIds)).toList();
}
