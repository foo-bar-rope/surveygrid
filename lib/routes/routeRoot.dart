import 'package:flutter/material.dart';

class RouteRoot extends StatefulWidget {
  final Widget _body;

  RouteRoot(this._body);

  @override
  _renderRouteRootState createState() => _renderRouteRootState();
}

class _renderRouteRootState extends State<RouteRoot> {
  String userId;
  String accessToken;

  Widget build(BuildContext context) {
    return widget._body;
  }
}
