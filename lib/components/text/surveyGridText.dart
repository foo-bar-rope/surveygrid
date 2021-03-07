import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SurveyGridText extends StatelessWidget {
  final String value;

  SurveyGridText(
      {this.value});

  @override
  Widget build(BuildContext context) {
    return Text(this.value);
  }
}
