import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SurveyGridIconButton extends StatefulWidget {
  IconData iconData = Icons.circle_outlined;
  VoidCallback? onPressed;

  SurveyGridIconButton(
      {IconData iconData = Icons.circle_outlined, VoidCallback? onPressed}) {
    this.iconData = iconData;
    this.onPressed = onPressed;
  }

  @override
  _surveyGridIconButton createState() => _surveyGridIconButton();
}

class _surveyGridIconButton extends State<SurveyGridIconButton> {
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(widget.iconData),
      onPressed: widget.onPressed,
    );
  }
}
