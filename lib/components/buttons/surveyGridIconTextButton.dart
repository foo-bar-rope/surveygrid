import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SurveyGridIconTextButton extends StatefulWidget {
  IconData? iconData = Icons.circle_outlined;
  String labelText = '';
  VoidCallback? onPressed;

  SurveyGridIconTextButton(
      {IconData? iconData, String labelText = '', VoidCallback? onPressed}) {
    this.iconData = iconData;
    this.labelText = labelText;
    this.onPressed = onPressed;
  }

  @override
  _surveyGridIconTextButton createState() => _surveyGridIconTextButton();
}

class _surveyGridIconTextButton extends State<SurveyGridIconTextButton> {
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: Icon(widget.iconData),
      label: Text(widget.labelText),
      onPressed: widget.onPressed,
    );
  }
}
