// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../Screens/AddNew.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[300],
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          DrawerHeader(child: Icon(Icons.store_mall_directory_outlined, size: 100,)),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddNewItem(),
                ),
              );
            },
            leading: Icon(Icons.home),
            title: Text('A D D N E W I T E M'),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('D A S H B O A R D'),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('M E S S A G E'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('S E T T I N G'),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('L O G O U T'),
          ),
        ],
      ),
    );
    ;
  }
}
