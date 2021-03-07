import 'dart:convert';
import 'package:surveygrid/models/table/modelSurveyGridTable.dart';
import 'package:surveygrid/services/storages/SurveyGridStorage.dart';

class TableStorage extends Storage {
  TableStorage(String path) : super(path);

  Future<Map<String, dynamic>>
      readTable() async {
    try {
      final file = await this.read();
      return json.decode(file);
    } catch (e) {
      return null;
    }
  }

  Future<ModelSurveyGridTable> writeColumns(
      ModelSurveyGridTable table) async {
    try {
      final file = this.write(table as Map<String, dynamic>);
      return table;
    } catch (e) {
      return null;
    }
  }
}
