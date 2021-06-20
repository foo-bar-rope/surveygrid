import 'package:flutter/material.dart';
import 'package:surveygrid/components/buttons/surveyGridIconTextButton.dart';
import 'package:surveygrid/components/text_form_fields/surveyGridTextFormField.dart';

class ScreenLogin extends StatefulWidget {
  ScreenLogin() : super();

  @override
  _renderLoginState createState() => _renderLoginState();
}

class _renderLoginState extends State<ScreenLogin> {
  late String email;
  late String password;

  void onChangedEmail(String e) {
    setState(() {
      this.email = e;
    });
  }

  void onChangedPassword(String e) {
    setState(() {
      this.password = e;
    });
  }

  void onLogin() {}

  _renderLoginState({String email = '', String password = ''}) {
    this.email = email;
    this.password = password;
  }

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
            textInpuType: TextInputType.text,
            validationType: '',
            required: true,
          ),
          SurveyGridTextFormField(
            enabled: true,
            value: password,
            textAlign: TextAlign.start,
            decoration:
                InputDecoration(labelText: 'Password', icon: Icon(Icons.lock)),
            onChanged: onChangedPassword,
            textInpuType: TextInputType.text,
            validationType: '',
            required: true,
          ),
          SurveyGridIconTextButton(
            iconData: Icons.login,
            labelText: 'login',
            onPressed: onLogin,
          )
        ],
      ),
    );
  }
}
