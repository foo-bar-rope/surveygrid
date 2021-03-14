import 'package:flutter/material.dart';
import 'package:surveygrid/components/tables/column-groups/surveyGridTableColumnGroup.dart';
import 'package:surveygrid/models/table/column-groups/modelSurveyGridTableColumnGroup.dart';

List<TableRow> SurveyGridTableColumnGroups(
    List<ModelSurveyGridTableColumnGroup> surveyGridDataTableColumnGroups,
    List<String> columnGroupIds,
    List<String>columnIds) {

  return surveyGridDataTableColumnGroups.expand((columnGroup) =>
      SurveyGridTableColumnGroup(columnGroup, columnGroupIds, columnIds)).toList();
}
