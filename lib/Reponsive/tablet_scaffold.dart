// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventoryapp/Constant/Constants.dart';
import 'package:inventoryapp/Utility/my_drawer.dart';

import '../Utility/my_box.dart';
import '../Utility/my_tiles.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: MyDefalutBackground,
      drawer: MyDrawer(),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 6,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return MyBox();
                },
              ),
            ),
          ),

          // tiles below;
          Expanded(
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) {
                return MyTiles();
              },
            ),
          )
        ],
      ),
    );
  }
}
