// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTiles extends StatelessWidget {
  const MyTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        color: Colors.grey[500],
        height: 80,
      ),
    );
  }
}
