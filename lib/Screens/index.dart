import 'package:flutter/material.dart';
import 'package:inventoryapp/Reponsive/desktop_scaffold.dart';
import 'package:inventoryapp/Reponsive/mobile_scaffold.dart';
import 'package:inventoryapp/Reponsive/responsive_layout.dart';
import 'package:inventoryapp/Reponsive/tablet_scaffold.dart';

class MainIndex extends StatelessWidget {
  const MainIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        desktopScaffold: const DesktopScaffold(),
        mobileScaffold: const MobileScaffold(),
        tabletScaffold: const TabletScaffold(),
      ),
    );
  }
}