import 'package:flutter/material.dart';
import 'package:productgridscreen_uii/grid_screen.dart';
import 'package:productgridscreen_uii/grid_single.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductGridScreen(),
      routes: {
        "Single-Product" :(context) => SingleProductGridscreen(),
      },
    );
  }
}