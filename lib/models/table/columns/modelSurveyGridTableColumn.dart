import 'package:cloud_firestore/cloud_firestore.dart';

class ModelSurveyGridTableColumn {
  final String id;
  final String tableId;
  final String name;
  final Timestamp createdAt;
  final Timestamp updatedAt;

  ModelSurveyGridTableColumn(
      this.id, this.tableId, this.name, this.createdAt, this.updatedAt);

  ModelSurveyGridTableColumn.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        tableId = json['tableId'],
        name = json['name'],
        createdAt = json['createdAt'],
        updatedAt = json['updatedAt'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'tableId': tableId,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt
      };
}
