import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surveygrid/layouts/layout.dart';
import 'package:surveygrid/screens/tables/renderTable.dart';

class RouteTable extends StatelessWidget {
  Widget build(BuildContext context) {
    return Layout(RouteTableRender());
  }
}

class RouteTableRender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RenderTable(),
      ),
    );
  }
}