import 'package:surveygrid/services/functions/tables/functionTable.dart';
import 'package:surveygrid/services/functions/tables/instrument-height-leveling/functionInstrumentHeightLeveling.dart';

class StrategyTable {
  Function sortColumnGroups;
  Function sortColumns;
  Function sortRowGroups;
  Function sortRows;
  Function onChangedColumnGroups;
  Function onChangedColumnValue;
  Function onChangedRowGroups;
  Function onChangedRowValue;

  StrategyTable(tableType) {
    this.sortColumnGroups = new SortColumnGroups();
    this.sortColumns = new SortColumns();
    this.sortRowGroups = new SortRowGroups();
    this.sortRows = new SortRows();
    switch (tableType) {
      case 'instrument-height-leveling':
        this.onChangedColumnGroups =
            new OnChangedColumnGroupsForInstructionHeightLeveling();
        this.onChangedColumnValue =
            new OnChangedColumnsForInstructionHeightLeveling();
        this.onChangedColumnGroups =
            new OnChangedRowGroupsForInstructionHeightLeveling();
        this.onChangedRowValue =
            new OnChangedRowsForInstructionHeightLeveling();
        break;
      default:
        this.onChangedColumnGroups = () => {};
        this.onChangedColumnValue = () => {};
        this.onChangedColumnGroups = () => {};
        this.onChangedRowValue = () => {};
        break;
    }
  }
}
