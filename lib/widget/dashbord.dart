import 'package:flutter/material.dart';

class Dashbord extends StatelessWidget {
  const Dashbord({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(24), boxShadow: [
        BoxShadow(
          color: Colors.white.withOpacity(0.9),
          offset: Offset(-2, -2),
          blurRadius: 10,
          spreadRadius: 1,
        ),
      ]),
      child: const Column(children: [
        DrawerHeader(
          child: Icon(
            Icons.favorite,
            size: 100,
          ),
        ),
        SizedBox(
          height: 24,
        ),
        ListTile(
          leading: Icon(
            Icons.home,
            size: 32,
          ),
          title: Text(
            'Dahsbord',
            style: TextStyle(fontSize: 32),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            size: 32,
          ),
          title: Text(
            'settings',
            style: TextStyle(fontSize: 32),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.info,
            size: 32,
          ),
          title: Text(
            'info',
            style: TextStyle(fontSize: 32),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.logout,
            size: 32,
          ),
          title: Text(
            'logout',
            style: TextStyle(fontSize: 32),
          ),
        ),
      ]),
    );
  }
}
