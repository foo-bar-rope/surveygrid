import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SurveyGridText extends StatelessWidget {
  late String value;

  SurveyGridText({required String value}) {
    this.value = value;
  }

  @override
  Widget build(BuildContext context) {
    return Text(this.value);
  }
}
