import 'package:flutter/material.dart';
// import 'package:inventoryapp/Reponsive/desktop_scaffold.dart';
// import 'package:inventoryapp/Reponsive/mobile_scaffold.dart';
// import 'package:inventoryapp/Reponsive/responsive_layout.dart';
// import 'package:inventoryapp/Reponsive/tablet_scaffold.dart';
import 'package:inventoryapp/Screens/Auth/LoginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ResponsiveLayout(
      //   desktopScaffold: const DesktopScaffold(),
      //   mobileScaffold: const MobileScaffold(),
      //   tabletScaffold: const TabletScaffold(),
      // ),
      home: const LoginScreen(),
    );
  }
}
