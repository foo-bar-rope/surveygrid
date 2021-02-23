import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surveygrid/layouts/layout.dart';
import 'package:surveygrid/screens/mainMenu/renderMainMenu.dart';

class RouteMainMenu extends StatelessWidget {
  Widget build(BuildContext context) {
    return Layout(RouteMainMenuRender());
  }
}

class RouteMainMenuRender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RenderMainMenu()
      ),
    );
  }
}