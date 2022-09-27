// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventoryapp/Constant/Constants.dart';
import 'package:inventoryapp/Utility/my_drawer.dart';

import '../Utility/my_box.dart';
import '../Utility/my_tiles.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyDefalutBackground,
      appBar: myAppBar,
      body: Row(
        children: [
          //open drawer
          MyDrawer(),
          //main items
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 6,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                        ),
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return MyBox();
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return MyTiles();
                      },
                    ),
                  )
                  // extra content on screen
                ],
              )),
          Expanded(
              child: Stack(alignment: Alignment.center, children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 11),
              color: Colors.black,
              height: 500,
            )
          ])),
        ],
      ),
    );
  }
}
