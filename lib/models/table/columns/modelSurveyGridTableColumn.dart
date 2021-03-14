import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:surveygrid/models/table/cells/modelSurveyGridTableCell.dart';

class ModelSurveyGridTableColumn {
  final String id;
  final String tableId;
  final String columnGroupId;
  final List<String> cellIds;
  final Timestamp createdAt;
  final Timestamp updatedAt;
  final List<ModelSurveyGridTableCell> cells;

  ModelSurveyGridTableColumn(this.id, this.tableId, this.columnGroupId, this.cellIds,
      this.createdAt, this.updatedAt, this.cells);

  ModelSurveyGridTableColumn.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        tableId = json['tableId'],
        columnGroupId = json['columnGroupId'],
        cellIds = json['cellIds'],
        createdAt = json['createdAt'],
        updatedAt = json['updatedAt'],
        cells = json['cells'];

  Map<String, dynamic> toJson() =>
      {
        'id': id,
        'tableId': tableId,
        'columnGroupId': columnGroupId,
        'cellIds': cellIds,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'cells': cells
      };
}
