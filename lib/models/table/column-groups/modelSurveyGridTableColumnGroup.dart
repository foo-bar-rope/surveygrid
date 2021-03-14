import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:surveygrid/models/table/columns/modelSurveyGridTableColumn.dart';

class ModelSurveyGridTableColumnGroup {
  final String id;
  final String tableId;
  final List<String> columnIds;
  final Timestamp createdAt;
  final Timestamp updatedAt;
  final List<ModelSurveyGridTableColumn> columns;

  ModelSurveyGridTableColumnGroup(
      this.id, this.tableId, this.columnIds,
      this.createdAt, this.updatedAt, this.columns);

  ModelSurveyGridTableColumnGroup.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        tableId = json['tableId'],
        columnIds = json['columnIds'],
        createdAt = json['createdAt'],
        updatedAt = json['updatedAt'],
        columns = json['columns'];

  Map<String, dynamic> toJson() => {
    'id': id,
    'tableId': tableId,
    'columnIds': columnIds,
    'createdAt': createdAt,
    'updatedAt': updatedAt,
    'columns': columns,
  };
}
