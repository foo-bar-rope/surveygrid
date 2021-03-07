import 'package:flutter/material.dart';
import 'package:surveygrid/components/tables/cells/surveyGridTableColumnCell.dart';
import 'package:surveygrid/models/table/columns/modelSurveyGridTableColumn.dart';

List<DataColumn> SurveyGridTableColumns(
    List<ModelSurveyGridTableColumn> surveyGridColumns) {
  return surveyGridColumns
      .map((ModelSurveyGridTableColumn column) =>
          DataColumn(label: SurveyGridTableColumnCell(column: column)))
      .toList();
}
