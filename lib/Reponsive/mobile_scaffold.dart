// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inventoryapp/Constant/Constants.dart';
import 'package:inventoryapp/Utility/my_box.dart';
import 'package:inventoryapp/Utility/my_drawer.dart';
import 'package:inventoryapp/Utility/my_tiles.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar,
        backgroundColor: MyDefalutBackground,
        drawer: MyDrawer(),
        body: PageView(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: AspectRatio(
                    aspectRatio: 2,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return MyBox();
                        },
                      ),
                    ),
                  ),
                ),

                // tiles below;
                Expanded(
                  flex: 2,
                  child: ListView.builder(
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return MyTiles();
                    },
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
