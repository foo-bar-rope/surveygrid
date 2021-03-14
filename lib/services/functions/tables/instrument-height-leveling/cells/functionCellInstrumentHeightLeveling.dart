import 'package:decimal/decimal.dart';
import 'package:surveygrid/models/table/cells/modelSurveyGridTableCell.dart';

class UpdateCellsByBackSight implements Function {
  List<ModelSurveyGridTableCell> call(List<ModelSurveyGridTableCell> cells,
      String backSight, String backSightGroundLine) {
    final frontSight =
        cells.firstWhere((cell) => cell.rowId == 'front-sight').value;
    cells.map((cell) => updateCellByBackSight(
        cell, backSight, backSightGroundLine, frontSight));
  }

  ModelSurveyGridTableCell updateCellByBackSight(ModelSurveyGridTableCell cell,
      String backSight, String backSightGroundLine, String frontSight) {
    switch (cell.rowId) {
      case 'back-sight':
      case 'front-sight':
        return cell;
      case 'instruction-height':
        cell.value = _generateInstrumentHeight(
            backSight, backSightGroundLine, frontSight);
        return cell;
      case 'ground-line':
        cell.value =
            _generateGroundLine(backSight, backSightGroundLine, frontSight);
        return cell;
      default:
        return cell;
    }
  }

  String _generateInstrumentHeight(
      String backSight, String backSightGroundLine, String frontSight) {
    return backSightGroundLine != null
        ? (Decimal.parse(backSight) + Decimal.parse(backSightGroundLine))
            .toString()
        : Decimal.parse(backSight).toString();
  }

  String _generateGroundLine(
      String backSight, String backSightGroundLine, String frontSight) {
    return backSightGroundLine != null
        ? (Decimal.parse(backSight) +
                Decimal.parse(backSightGroundLine) -
                Decimal.parse(frontSight))
            .toString()
        : (Decimal.parse(backSight) - Decimal.parse(frontSight)).toString();
  }
}
