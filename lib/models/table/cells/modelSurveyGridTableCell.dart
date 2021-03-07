import 'package:cloud_firestore/cloud_firestore.dart';

class ModelSurveyGridTableRowCell {
  final String id;
  final String tableId;
  final String columnId;
  final String rowId;
  final String value;
  final Timestamp createdAt;
  final Timestamp updatedAt;

  ModelSurveyGridTableRowCell(this.id, this.tableId, this.columnId, this.rowId, this.value,
      this.createdAt, this.updatedAt);

  ModelSurveyGridTableRowCell.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        tableId = json['tableId'],
        columnId = json['columnId'],
        rowId = json['rowId'],
        value = json['value'],
        createdAt = json['createdAt'],
        updatedAt = json['updatedAt'];

  Map<String, dynamic> toJson() =>
      {
        'id': id,
        'tableId': tableId,
        'columnId': columnId,
        'rowId': rowId,
        'value': value,
        'createdAt': createdAt,
        'updatedAt': updatedAt
      };
}
