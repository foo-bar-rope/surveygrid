import 'package:surveygrid/models/table/rows/modelSurveyGridTableRow.dart';
import 'package:surveygrid/services/functions/tables/instrument-height-leveling/rows/functionRowInstrumentHeightLeveling.dart';

class OnChangedColumnGroupsForInstructionHeightLeveling implements Function {
  Function call() {}
}

class OnChangedColumnsForInstructionHeightLeveling implements Function {
  Function call() {}
}

class OnChangedRowGroupsForInstructionHeightLeveling implements Function {
  Function call() {}
}

class OnChangedRowsForInstructionHeightLeveling implements Function {
  List<ModelSurveyGridTableRow> call(List<ModelSurveyGridTableRow> rows) {
    final updateRowsByBackSight = new UpdateRowsByBackSight();
    return updateRowsByBackSight(rows);
  }
}
