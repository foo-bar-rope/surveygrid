import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surveygrid/layouts/layout.dart';
import 'package:surveygrid/routes/routeRoot.dart';
import 'package:surveygrid/screens/login/renderLogin.dart';

class RouteLogin extends StatelessWidget {
  Widget build(BuildContext context) {
    return Layout(RouteRoot(RouteLoginRender()));
  }
}

class RouteLoginRender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RenderLogin(),
    );
  }
}