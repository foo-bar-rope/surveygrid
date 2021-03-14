import 'package:flutter/material.dart';
import 'package:surveygrid/components/tables/rows/surveyGridTableRows.dart';
import 'package:surveygrid/models/table/row-groups/modelSurveyGridTableRowGroup.dart';

List<TableRow> SurveyGridTableRowGroup(
    ModelSurveyGridTableRowGroup surveyGridDataTableRowGroup,
    List<String> columnGroupIds,
    List<String> columnIds,
    List<String> rowGroupIds,
    List<String> rowIds) {

  return SurveyGridTableRows(surveyGridDataTableRowGroup.rows, columnGroupIds, columnIds, rowGroupIds, rowIds);
}
