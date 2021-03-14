import 'package:surveygrid/models/table/rows/modelSurveyGridTableRow.dart';
import 'package:surveygrid/services/functions/tables/instrument-height-leveling/cells/functionCellInstrumentHeightLeveling.dart';

class UpdateRowsByBackSight implements Function {
  String backSight;
  String backSightGroundLine;

  List<ModelSurveyGridTableRow> call(List<ModelSurveyGridTableRow> rows,) {
    final ModelSurveyGridTableRow backSightRow = rows.firstWhere((row) =>
    row.cells.firstWhere((cell) => cell.rowId == 'back-sight') != null);
    this.backSight = backSightRow.cells
        .firstWhere((cell) => cell.rowId == 'back-sight').value;
    this.backSightGroundLine = backSightRow.cells
        .firstWhere((cell) => cell.rowId == 'ground-line').value;
    return rows.map((row) => row);
  }

  ModelSurveyGridTableRow updateRowByBackSight(
      ModelSurveyGridTableRow row
      ) {
    final updateCellsByBackSight = new UpdateCellsByBackSight();
    row.cells = updateCellsByBackSight(row.cells, this.backSight, this.backSightGroundLine);
    return row;
  }
}
