import 'package:flutter/material.dart';
import 'package:products/screens/main_screen.dart';
//import 'package:products/screens/product_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: ProductScreen(),
      home: MainScreen(),
    );
  }
}