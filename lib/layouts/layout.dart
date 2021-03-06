import 'package:flutter/material.dart';
import 'package:surveygrid/screens/sideMenu/screenSideMenu.dart';

class Layout extends StatelessWidget {
  Widget _body;

  Layout(this._body);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Survey Grid'),
      ),
      drawer: Drawer(
        child: ScreenSideMenu(),
      ),
      body: _body,
    );
  }
}
