import 'package:surveygrid/models/table/columns/modelSurveyGridTableColumn.dart';
import 'package:surveygrid/models/table/rows/modelSurveyGridTableRow.dart';

class ModelSurveyGridTable {
  final List<ModelSurveyGridTableColumn> columns;
  final List<ModelSurveyGridTableRow> rows;

  ModelSurveyGridTable(this.columns, this.rows);

  ModelSurveyGridTable.fromJson(Map<String, dynamic> json)
      : columns = json['columns'],
        rows = json['rows'];

  Map<String, dynamic> toJson() => {
    'columns': columns,
    'rows': rows,
  };
}
