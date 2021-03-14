import 'package:flutter/material.dart';
import 'package:surveygrid/components/buttons/surveyGridIconTextButton.dart';
import 'package:surveygrid/components/text_form_fields/surveyGridTextFormField.dart';

class ScreenLogin extends StatefulWidget {
  ScreenLogin({Key key}) : super(key: key);

  @override
  _renderLoginState createState() => _renderLoginState();
}

class _renderLoginState extends State<ScreenLogin> {
  String email;
  String password;

  ValueChanged<String> onChangedEmail(String e) {
    setState(() {
      this.email = e;
    });
  }

  ValueChanged<String> onChangedPassword(String e) {
    setState(() {
      this.password = e;
    });
  }

  VoidCallback onPressed() {}

  _renderLoginState({this.email, this.password});

  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          SurveyGridTextFormField(
            enabled: true,
            value: email,
            textAlign: TextAlign.start,
            decoration:
                InputDecoration(labelText: 'Email', icon: Icon(Icons.email)),
            onChanged: onChangedEmail,
          ),
          SurveyGridTextFormField(
            enabled: true,
            value: password,
            textAlign: TextAlign.start,
            decoration:
                InputDecoration(labelText: 'Password', icon: Icon(Icons.lock)),
            onChanged: onChangedPassword,
          ),
          SurveyGridIconTextButton(
            icon: Icon(Icons.login),
            label: Text('login'),
            onPressed: onPressed,
          )
        ],
      ),
    );
  }
}
