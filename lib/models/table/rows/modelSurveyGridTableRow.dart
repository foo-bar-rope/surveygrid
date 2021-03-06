import 'package:cloud_firestore/cloud_firestore.dart';

class ModelSurveyGridTableRow {
  final String id;
  final String tableId;
  final Timestamp createdAt;
  final Timestamp updatedAt;

  ModelSurveyGridTableRow(
      this.id, this.tableId, this.createdAt, this.updatedAt);

  ModelSurveyGridTableRow.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        tableId = json['tableId'],
        createdAt = json['createdAt'],
        updatedAt = json['updatedAt'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'tableId': tableId,
        'createdAt': createdAt,
        'updatedAt': updatedAt
      };
}
