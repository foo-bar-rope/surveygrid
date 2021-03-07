import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:surveygrid/models/table/cells/modelSurveyGridTableCell.dart';

class ModelSurveyGridTableRow {
  final String id;
  final String tableId;
  final Timestamp createdAt;
  final Timestamp updatedAt;
  final List<ModelSurveyGridTableRowCell> cells;

  ModelSurveyGridTableRow(
      this.id, this.tableId, this.createdAt, this.updatedAt, this.cells);

  ModelSurveyGridTableRow.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        tableId = json['tableId'],
        createdAt = json['createdAt'],
        updatedAt = json['updatedAt'],
        cells = json['cells'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'tableId': tableId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'cell': cells,
      };
}
