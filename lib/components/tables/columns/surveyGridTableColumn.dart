import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surveygrid/components/tables/cells/surveyGridTableCell.dart';
import 'package:surveygrid/models/table/columns/modelSurveyGridTableColumn.dart';

TableRow SurveyGridTableColumn(
    List<ModelSurveyGridTableColumn> surveyGridColumns) {
  return TableRow(
      children: surveyGridColumns
          .map((e) => SurveyGridTableCell(
                value: e.name,
              ))
          .toList());
}
