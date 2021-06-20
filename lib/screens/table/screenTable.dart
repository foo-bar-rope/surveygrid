import 'package:flutter/material.dart';
import 'package:surveygrid/components/tables/surveyGridTable.dart';

class ScreenTable extends StatelessWidget {
  ScreenTable() : super();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SurveyGridTable(),
    );
  }
}
