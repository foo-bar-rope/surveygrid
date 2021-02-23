import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surveygrid/routes/routeLogin.dart';
import 'package:surveygrid/routes/routeMainMenu.dart';
import 'package:surveygrid/routes/routeTable.dart';

class RenderSideMenu extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        DrawerHeader(
            child: Text('Send Grid'),
          decoration: BoxDecoration(
            color: Colors.blue
          ),
        ),
        ListTile(
          title: Text('Login'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RouteLogin())
            );
          },
        ),
        ListTile(
          title: Text('Menu'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RouteMainMenu())
            );
          },
        ),
        ListTile(
          title: Text('Table'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RouteTable())
            );
          },
        )
      ],
    );
  }
}