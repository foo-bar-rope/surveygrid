import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:surveygrid/models/table/cells/modelSurveyGridTableCell.dart';

class ModelSurveyGridTableRow {
  final String id;
  final String tableId;
  final String rowGroupId;
  final List<String> cellIds;
  final Timestamp createdAt;
  final Timestamp updatedAt;
  List<ModelSurveyGridTableCell> cells;

  ModelSurveyGridTableRow(this.id, this.tableId, this.rowGroupId, this.cellIds,
      this.createdAt, this.updatedAt, this.cells);

  ModelSurveyGridTableRow.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        tableId = json['tableId'],
        rowGroupId = json['rowGroupId'],
        cellIds = json['cellIds'],
        createdAt = json['createdAt'],
        updatedAt = json['updatedAt'],
        cells = json['cells'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'tableId': tableId,
        'rowGroupId': rowGroupId,
        'cellIds': cellIds,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'cell': cells,
      };
}
