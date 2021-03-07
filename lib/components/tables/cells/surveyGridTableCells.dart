import 'package:flutter/material.dart';
import 'package:surveygrid/components/tables/cells/surveyGridTableCell.dart';
import 'package:surveygrid/models/table/cells/modelSurveyGridTableCell.dart';

List<DataCell> SurveyGridTableCells(
    List<ModelSurveyGridTableCell> surveyGridTableCells) {
  return surveyGridTableCells
      .map((e) => DataCell(SurveyGridTableCell(cell: e,)))
      .toList();
}
