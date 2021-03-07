import 'package:flutter/material.dart';
import 'package:surveygrid/components/tables/cells/surveyGridTableRowCell.dart';
import 'package:surveygrid/models/table/cells/modelSurveyGridTableCell.dart';

List<DataCell> SurveyGridTableRowCells(
    List<ModelSurveyGridTableRowCell> surveyGridTableRowCells, double width) {
  return surveyGridTableRowCells
      .map((e) => DataCell(SurveyGridTableRowCell(
            cell: e,
            width: width,
          )))
      .toList();
}
