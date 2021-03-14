import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:surveygrid/models/table/column-groups/modelSurveyGridTableColumnGroup.dart';
import 'package:surveygrid/models/table/row-groups/modelSurveyGridTableRowGroup.dart';

class ModelSurveyGridTable {
  final String id;
  final String tableId;
  final Timestamp createdAt;
  final Timestamp updatedAt;
  final List<String> columnGroupIds;
  final List<String> rowGroupIds;
  final List<ModelSurveyGridTableColumnGroup> columnGroups;
  final List<ModelSurveyGridTableRowGroup> rowGroups;

  ModelSurveyGridTable(
      this.id,
      this.tableId,
      this.columnGroupIds,
      this.rowGroupIds,
      this.createdAt,
      this.updatedAt,
      this.columnGroups,
      this.rowGroups);

  ModelSurveyGridTable.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        tableId = json['tableId'],
        columnGroupIds = json['columnGroupIds'],
        rowGroupIds = json['rowGroupIds'],
        createdAt = json['createdAt'],
        updatedAt = json['updatedAt'],
        columnGroups = json['columnGroups'],
        rowGroups = json['rowGroups'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'tableId': tableId,
        'columnGroupIds': columnGroupIds,
        'rowGroupIds': rowGroupIds,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'columnGroups': columnGroups,
        'rowGroups': rowGroups,
      };
}
