import 'package:cloud_firestore/cloud_firestore.dart';

class ModelSurveyGridTable {
  final String id;
  final String name;
  final List<String> columnIds;
  final List<String> rowIds;
  final Timestamp createdAt;
  final Timestamp updatedAt;

  ModelSurveyGridTable(this.id, this.name, this.columnIds, this.rowIds,
      this.createdAt, this.updatedAt);

  ModelSurveyGridTable.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        columnIds = json['columnIds'],
        rowIds = json['rowIds'],
        createdAt = json['createdAt'],
        updatedAt = json['updatedAt'];

  Map<String, dynamic> toJson() =>
      {'id': id, 'name': name, 'createdAt': createdAt, 'updatedAt': updatedAt};
}
