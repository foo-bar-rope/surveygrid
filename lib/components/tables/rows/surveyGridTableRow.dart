import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surveygrid/components/tables/cells/surveyGridTableCell.dart';
import 'package:surveygrid/models/table/cells/modelSurveyGridTableCell.dart';
import 'package:surveygrid/models/table/rows/modelSurveyGridTableRow.dart';

TableRow SurveyGridTableRow(ModelSurveyGridTableRow surveyGridRow,
    List<ModelSurveyGridTableCell> surveyGridCells, List<String> columnIds) {
  return TableRow(
    children: surveyGridCells
        .map((e) => SurveyGridTableCell(
              value: e.value,
            ))
        .toList(),
  );
}
