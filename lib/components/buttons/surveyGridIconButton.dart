import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SurveyGridIconButton extends StatefulWidget {
  final Widget icon;
  final VoidCallback onPressed;

  SurveyGridIconButton({this.icon, this.onPressed});

  @override
  _surveyGridIconButton createState() => _surveyGridIconButton();
}

class _surveyGridIconButton extends State<SurveyGridIconButton> {
  Widget build(BuildContext context) {
    return IconButton(
      icon: widget.icon,
      onPressed: widget.onPressed,
    );
  }
}
