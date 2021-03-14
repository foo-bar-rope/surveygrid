import 'package:flutter/material.dart';
import 'package:surveygrid/components/tables/row-groups/surveyGridTableRowGroup.dart';
import 'package:surveygrid/models/table/row-groups/modelSurveyGridTableRowGroup.dart';

List<TableRow> SurveyGridTableRowGroups(
    List<ModelSurveyGridTableRowGroup> surveyGridDataTableRowGroups,
    List<String> columnGroupIds,
    List<String> columnIds,
    List<String> rowGroupIds,
    List<String> rowIds) {

  return surveyGridDataTableRowGroups.expand((rowGroup) =>
      SurveyGridTableRowGroup(
          rowGroup, columnGroupIds, columnIds, rowGroupIds, rowIds)).toList();
}
