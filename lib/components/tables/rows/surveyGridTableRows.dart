import 'package:flutter/material.dart';
import 'package:surveygrid/components/tables/rows/surveyGridTableRow.dart';
import 'package:surveygrid/models/table/cells/modelSurveyGridTableCell.dart';
import 'package:surveygrid/models/table/rows/modelSurveyGridTableRow.dart';

int sortAscOrder(ModelSurveyGridTableCell A, ModelSurveyGridTableCell B,
    List<String> columnIds) {
  final indexA = columnIds.indexWhere((element) => element == A.columnId);
  final indexB = columnIds.indexWhere((element) => element == B.columnId);
  return indexA.compareTo(indexB);
}

List<DataRow> SurveyGridTableRows(
    List<ModelSurveyGridTableRow> surveyGridRows, List<String> columnIds) {

  return surveyGridRows.map((ModelSurveyGridTableRow row) => SurveyGridTableRow(row, columnIds)).toList();
}
