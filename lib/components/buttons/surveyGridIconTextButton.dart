import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SurveyGridIconTextButton extends StatefulWidget {
  final Widget icon;
  final Widget label;
  final VoidCallback onPressed;

  SurveyGridIconTextButton({this.icon, this.label, this.onPressed});

  @override
  _surveyGridIconTextButton createState() => _surveyGridIconTextButton();
}

class _surveyGridIconTextButton extends State<SurveyGridIconTextButton> {
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: widget.icon,
      label: widget.label,
      onPressed: widget.onPressed,
    );
  }
}
