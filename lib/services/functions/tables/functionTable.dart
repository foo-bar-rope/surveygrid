import 'package:surveygrid/models/table/column-groups/modelSurveyGridTableColumnGroup.dart';
import 'package:surveygrid/models/table/columns/modelSurveyGridTableColumn.dart';
import 'package:surveygrid/models/table/row-groups/modelSurveyGridTableRowGroup.dart';
import 'package:surveygrid/models/table/rows/modelSurveyGridTableRow.dart';

class SortColumnGroups implements Function {
  List<ModelSurveyGridTableColumnGroup> call(
      List<ModelSurveyGridTableColumnGroup> columnGroups,
      List<String> columnGroupIds) {
    columnGroups.sort((a, b) => _sortByColumnGroupIds(a, b, columnGroupIds));
    return columnGroups;
  }

  int _sortByColumnGroupIds(ModelSurveyGridTableColumnGroup a,
      ModelSurveyGridTableColumnGroup b, List<String> columnGroupIds) {
    final indexA =
        columnGroupIds.indexWhere((columnGroupId) => columnGroupId == a.id);
    final indexB =
        columnGroupIds.indexWhere((columnGroupId) => columnGroupId == b.id);
    return indexA.compareTo(indexB);
  }
}

class SortColumns implements Function {
  List<ModelSurveyGridTableColumn> call(
      List<ModelSurveyGridTableColumn> columns, List<String> columnIds) {
    columns.sort((a, b) => _sortByColumnIds(a, b, columnIds));
    return columns;
  }

  int _sortByColumnIds(ModelSurveyGridTableColumn a,
      ModelSurveyGridTableColumn b, List<String> columnIds) {
    final indexA = columnIds.indexWhere((columnId) => columnId == a.id);
    final indexB = columnIds.indexWhere((columnId) => columnId == b.id);
    return indexA.compareTo(indexB);
  }
}

class SortRowGroups implements Function {
  List<ModelSurveyGridTableRowGroup> call(
      List<ModelSurveyGridTableRowGroup> rowGroups, List<String> rowGroupIds) {
    rowGroups.sort((a, b) => _sortByRowGroupIds(a, b, rowGroupIds));
    return rowGroups;
  }

  int _sortByRowGroupIds(ModelSurveyGridTableRowGroup a,
      ModelSurveyGridTableRowGroup b, List<String> rowGroupIds) {
    final indexA = rowGroupIds.indexWhere((rowGroupId) => rowGroupId == a.id);
    final indexB = rowGroupIds.indexWhere((rowGroupId) => rowGroupId == b.id);
    return indexA.compareTo(indexB);
  }
}

class SortRows implements Function {
  List<ModelSurveyGridTableRow> call(
      List<ModelSurveyGridTableRow> rows, List<String> rowIds) {
    rows.sort((a, b) => _sortByRowIds(a, b, rowIds));
    return rows;
  }

  int _sortByRowIds(ModelSurveyGridTableRow a, ModelSurveyGridTableRow b,
      List<String> rowIds) {
    final indexA = rowIds.indexWhere((rowId) => rowId == a.id);
    final indexB = rowIds.indexWhere((rowId) => rowId == b.id);
    return indexA.compareTo(indexB);
  }
}
