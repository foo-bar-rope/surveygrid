import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:surveygrid/models/table/rows/modelSurveyGridTableRow.dart';

class ModelSurveyGridTableRowGroup {
  final String id;
  final String tableId;
  final List<String> rowIds;
  final Timestamp createdAt;
  final Timestamp updatedAt;
  final List<ModelSurveyGridTableRow> rows;

  ModelSurveyGridTableRowGroup(this.id, this.tableId, this.rowIds,
      this.createdAt, this.updatedAt, this.rows);

  ModelSurveyGridTableRowGroup.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        tableId = json['tableId'],
        rowIds = json['rowIds'],
        createdAt = json['createdAt'],
        updatedAt = json['updatedAt'],
        rows = json['rows'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'tableId': tableId,
        'rowIds': rowIds,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'rows': rows,
      };
}
