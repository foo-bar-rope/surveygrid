import 'package:flutter/material.dart';

class RenderTable extends StatefulWidget {
  RenderTable({Key key}) : super(key: key);

  @override
  _renderTableState createState() => _renderTableState();
}

class _renderTableState extends State<RenderTable> {
  // List<SurveyColumn> _surveyColumns = [SurveyColumn('columnId', 'column')];
  // List<SurveyRow> _surveyRows = [SurveyRow('rowId', 'row')];

  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(label: Text('name'))
      ],
      rows: const <DataRow>[
        DataRow(
          cells: [
            DataCell(TextField())
          ]
        )
      ]
    );
  }
}
