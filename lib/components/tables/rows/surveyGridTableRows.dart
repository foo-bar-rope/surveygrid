import 'package:flutter/material.dart';
import 'package:surveygrid/components/tables/rows/surveyGridTableRow.dart';
import 'package:surveygrid/models/table/rows/modelSurveyGridTableRow.dart';

List<DataRow> SurveyGridTableRows(
    List<ModelSurveyGridTableRow> surveyGridRows, List<String> columnIds) {
  return surveyGridRows
      .map((ModelSurveyGridTableRow row) => SurveyGridTableRow(row, columnIds))
      .toList();
}
