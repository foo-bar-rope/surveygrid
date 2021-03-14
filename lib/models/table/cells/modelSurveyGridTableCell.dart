import 'package:cloud_firestore/cloud_firestore.dart';

class ModelSurveyGridTableCell {
  final String id;
  final String tableId;
  final String columnId;
  final String rowId;
  final Timestamp createdAt;
  Timestamp updatedAt;
  final String validationType;
  String value;

  ModelSurveyGridTableCell(this.id, this.tableId, this.columnId, this.rowId,
      this.createdAt, this.updatedAt, this.validationType, this.value);

  ModelSurveyGridTableCell.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        tableId = json['tableId'],
        columnId = json['columnId'],
        rowId = json['rowId'],
        createdAt = json['createdAt'],
        updatedAt = json['updatedAt'],
        validationType = json['validationType'],
        value = json['value'];

  Map<String, dynamic> toJson() =>
      {
        'id': id,
        'tableId': tableId,
        'columnId': columnId,
        'rowId': rowId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'validationType': validationType,
        'value': value,
      };
}
